.class public Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;
.super Ljava/lang/Object;
.source "ICCardReaderRetData.java"


# static fields
.field public static final MIN_PACKET_LEN:I = 0x6


# instance fields
.field private bcc:B

.field private data:[B

.field private etx:B

.field private len:B

.field private stationid:B

.field private status:B

.field private stx:B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x56

    .line 126
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->stx:B

    const/4 v0, 0x0

    .line 127
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->stationid:B

    .line 128
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    const/4 v1, -0x1

    .line 129
    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->status:B

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    .line 131
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->bcc:B

    const/16 v0, -0x45

    .line 132
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->etx:B

    return-void
.end method


# virtual methods
.method public PreGetLen([B)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 163
    array-length v1, p1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_16

    const/16 v1, -0x56

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_e

    goto :goto_16

    :cond_e
    const/4 v0, 0x2

    .line 167
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x5

    return p1

    :cond_16
    :goto_16
    return v0
.end method

.method public UnPacket([B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    .line 171
    array-length v1, p1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    goto :goto_58

    .line 175
    :cond_8
    invoke-virtual {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->PreGetLen([B)I

    move-result v1

    if-lez v1, :cond_57

    .line 176
    array-length v2, p1

    if-gt v1, v2, :cond_57

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p1, v1

    const/16 v3, -0x45

    if-eq v1, v3, :cond_1a

    goto :goto_57

    .line 181
    :cond_1a
    aget-byte v1, p1, v0

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->stx:B

    const/4 v1, 0x2

    .line 182
    aget-byte v3, p1, v2

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->stationid:B

    const/4 v3, 0x3

    .line 183
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    const/4 v1, 0x4

    .line 184
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->status:B

    .line 185
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    and-int/lit16 v3, v3, 0xff

    if-le v3, v2, :cond_4c

    .line 187
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    .line 188
    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v4, v2

    invoke-static {p1, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_4c
    add-int/lit8 v0, v1, 0x1

    .line 191
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->bcc:B

    .line 192
    aget-byte p1, p1, v0

    iput-byte p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->etx:B

    return v2

    :cond_57
    :goto_57
    return v0

    :cond_58
    :goto_58
    return v0
.end method

.method public calcCheckSum()B
    .registers 4

    .line 203
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->stationid:B

    const/4 v1, 0x0

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    .line 204
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    .line 205
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->status:B

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    .line 207
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    array-length v2, v2

    if-lez v2, :cond_24

    .line 209
    :goto_16
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 211
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    aget-byte v2, v2, v1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    return v0
.end method

.method public free()V
    .registers 3

    const/16 v0, -0x56

    .line 136
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->stx:B

    const/4 v0, 0x0

    .line 137
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->stationid:B

    .line 138
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    const/4 v1, -0x1

    .line 140
    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->status:B

    .line 141
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->bcc:B

    const/16 v0, -0x45

    .line 142
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->etx:B

    return-void
.end method

.method public getChecksum()B
    .registers 2

    .line 198
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->bcc:B

    return v0
.end method

.method public getData()[B
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->data:[B

    return-object v0
.end method

.method public getDataLen()I
    .registers 2

    .line 159
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->len:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getStatus()B
    .registers 2

    .line 149
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/ICCardReaderRetData;->status:B

    return v0
.end method
