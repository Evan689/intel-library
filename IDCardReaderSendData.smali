.class public Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;
.super Ljava/lang/Object;
.source "IDCardReaderSendData.java"


# instance fields
.field checksum:B

.field cmd:B

.field data:[B

.field len1:B

.field len2:B

.field para:B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len1:B

    .line 10
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len2:B

    .line 11
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->cmd:B

    .line 12
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->para:B

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    .line 14
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    return-void
.end method


# virtual methods
.method public free()V
    .registers 2

    const/4 v0, 0x0

    .line 18
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->para:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->cmd:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len2:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len1:B

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    return-void
.end method

.method public getHIDPacketLen()I
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v0, v0

    if-lez v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_e
    add-int/lit8 v1, v1, 0x5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDCardReader SendData getPacketLen length ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->d(Ljava/lang/String;)V

    return v1
.end method

.method public getPacketLen()I
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v0, v0

    if-lez v0, :cond_e

    .line 46
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_e
    add-int/lit8 v1, v1, 0xa

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDCardReader SendData getPacketLen length ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->d(Ljava/lang/String;)V

    return v1
.end method

.method public packet([B)Z
    .registers 9

    const/4 v0, 0x0

    .line 69
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 70
    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    const/4 v2, 0x3

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v1, v1

    if-lez v1, :cond_12

    .line 72
    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v1, v1

    add-int/2addr v1, v2

    goto :goto_13

    :cond_12
    const/4 v1, 0x3

    :goto_13
    const v3, 0xff00

    and-int/2addr v3, v1

    const/16 v4, 0x8

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    .line 74
    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len1:B

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    .line 75
    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len2:B

    .line 76
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-byte v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len1:B

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 77
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-byte v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len2:B

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 78
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-byte v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->cmd:B

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 79
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-byte v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->para:B

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 80
    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v3, v3

    if-lez v3, :cond_5e

    const/4 v3, 0x0

    .line 82
    :goto_4c
    iget-object v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v5, v5

    if-ge v3, v5, :cond_5e

    .line 84
    iget-byte v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-object v6, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    aget-byte v6, v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_5e
    const/4 v3, 0x7

    if-eqz p1, :cond_a8

    .line 87
    array-length v5, p1

    add-int/lit8 v6, v1, 0x7

    if-ge v5, v6, :cond_67

    goto :goto_a8

    :cond_67
    const/16 v1, -0x56

    .line 92
    aput-byte v1, p1, v0

    const/4 v5, 0x1

    .line 93
    aput-byte v1, p1, v5

    const/4 v6, 0x2

    .line 94
    aput-byte v1, p1, v6

    const/16 v1, -0x6a

    .line 95
    aput-byte v1, p1, v2

    const/4 v1, 0x4

    const/16 v2, 0x69

    .line 96
    aput-byte v2, p1, v1

    const/4 v1, 0x5

    .line 97
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len1:B

    aput-byte v2, p1, v1

    const/4 v1, 0x6

    .line 98
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len2:B

    aput-byte v2, p1, v1

    .line 99
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->cmd:B

    aput-byte v1, p1, v3

    .line 100
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->para:B

    aput-byte v1, p1, v4

    const/16 v1, 0x9

    .line 102
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v2, v2

    if-lez v2, :cond_a3

    .line 103
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v3, v3

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v0, v0

    add-int/2addr v1, v0

    .line 106
    :cond_a3
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    aput-byte v0, p1, v1

    return v5

    .line 89
    :cond_a8
    :goto_a8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDCardReaderSendData unPacket fail, buffer length not enough, length="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0
.end method

.method public packetHID([B)Z
    .registers 8

    const/4 v0, 0x0

    .line 114
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 115
    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    const/4 v2, 0x3

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v1, v1

    if-lez v1, :cond_12

    .line 117
    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v1, v1

    add-int/2addr v1, v2

    goto :goto_13

    :cond_12
    const/4 v1, 0x3

    :goto_13
    const v3, 0xff00

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    .line 119
    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len1:B

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    .line 120
    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len2:B

    .line 121
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len1:B

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 122
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len2:B

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 123
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->cmd:B

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 124
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->para:B

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    .line 125
    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v3, v3

    if-lez v3, :cond_5d

    const/4 v3, 0x0

    .line 127
    :goto_4b
    iget-object v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v4, v4

    if-ge v3, v4, :cond_5d

    .line 129
    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    iget-object v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    aget-byte v5, v5, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_5d
    if-eqz p1, :cond_92

    .line 132
    array-length v3, p1

    add-int/lit8 v4, v1, 0x7

    if-ge v3, v4, :cond_65

    goto :goto_92

    .line 137
    :cond_65
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len1:B

    aput-byte v1, p1, v0

    .line 138
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->len2:B

    const/4 v3, 0x1

    aput-byte v1, p1, v3

    const/4 v1, 0x2

    .line 139
    iget-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->cmd:B

    aput-byte v4, p1, v1

    .line 140
    iget-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->para:B

    aput-byte v1, p1, v2

    const/4 v1, 0x4

    .line 142
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v2, v2

    if-lez v2, :cond_8d

    .line 143
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    iget-object v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v4, v4

    invoke-static {v2, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v0, v0

    add-int/2addr v1, v0

    .line 146
    :cond_8d
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->checksum:B

    aput-byte v0, p1, v1

    return v3

    .line 134
    :cond_92
    :goto_92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDCardReaderSendData unPacket fail, buffer length not enough, length="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0
.end method

.method public setCmd(B)V
    .registers 2

    .line 24
    iput-byte p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->cmd:B

    return-void
.end method

.method public setData([B)V
    .registers 5

    if-eqz p1, :cond_11

    .line 34
    array-length v0, p1

    if-lez v0, :cond_11

    .line 36
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    .line 37
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->data:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    return-void
.end method

.method public setPara(B)V
    .registers 2

    .line 29
    iput-byte p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderSendData;->para:B

    return-void
.end method
