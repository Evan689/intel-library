.class public Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;
.super Ljava/lang/Object;
.source "ICCardReaderSendData.java"


# instance fields
.field private bcc:B

.field private cmd:B

.field private data:[B

.field private etx:B

.field private len:B

.field private stationid:B

.field private stx:B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x56

    .line 94
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->stx:B

    const/4 v0, 0x0

    .line 95
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->stationid:B

    .line 96
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    .line 97
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->cmd:B

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    .line 99
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    const/16 v0, -0x45

    .line 100
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->etx:B

    return-void
.end method


# virtual methods
.method public Packet([B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8a

    .line 145
    array-length v1, p1

    invoke-virtual {p0}, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->getPacketLen()I

    move-result v2

    if-ge v1, v2, :cond_c

    goto/16 :goto_8a

    .line 149
    :cond_c
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    .line 150
    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v1, v1

    if-lez v1, :cond_20

    .line 152
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v2, v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    .line 154
    :cond_20
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    .line 155
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->stationid:B

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    .line 156
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    .line 157
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->cmd:B

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    .line 158
    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v1, v1

    if-lez v1, :cond_57

    const/4 v1, 0x0

    .line 160
    :goto_45
    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v3, v3

    if-ge v1, v3, :cond_57

    .line 162
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    iget-object v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 166
    :cond_57
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->stx:B

    aput-byte v1, p1, v0

    const/4 v1, 0x2

    .line 167
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->stationid:B

    aput-byte v3, p1, v2

    const/4 v3, 0x3

    .line 168
    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    aput-byte v4, p1, v1

    const/4 v1, 0x4

    .line 169
    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->cmd:B

    aput-byte v4, p1, v3

    .line 170
    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v3, v3

    if-lez v3, :cond_7f

    .line 172
    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    iget-object v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v4, v4

    invoke-static {v3, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_7f
    add-int/lit8 v0, v1, 0x1

    .line 175
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    aput-byte v3, p1, v1

    .line 176
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->etx:B

    aput-byte v1, p1, v0

    return v2

    :cond_8a
    :goto_8a
    return v0
.end method

.method public free()V
    .registers 3

    const/16 v0, -0x56

    .line 104
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->stx:B

    const/4 v0, 0x0

    .line 105
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->stationid:B

    .line 106
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->len:B

    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    .line 108
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->cmd:B

    .line 109
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->bcc:B

    const/16 v0, -0x45

    .line 110
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->etx:B

    return-void
.end method

.method public getPacketLen()I
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    const/4 v1, 0x6

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v0, v0

    if-lez v0, :cond_e

    .line 138
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_e
    return v1
.end method

.method public setCmd(B)V
    .registers 2

    .line 120
    iput-byte p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->cmd:B

    return-void
.end method

.method public setData([B)V
    .registers 5

    if-eqz p1, :cond_11

    .line 125
    array-length v0, p1

    if-lez v0, :cond_11

    .line 127
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    .line 128
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->data:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    return-void
.end method

.method public setStationid(B)V
    .registers 2

    .line 115
    iput-byte p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderSendData;->stationid:B

    return-void
.end method
