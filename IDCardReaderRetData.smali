.class public Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;
.super Ljava/lang/Object;
.source "IDCardReaderRetData.java"


# static fields
.field public static final min_hid_len:I = 0x6

.field public static final min_len:I = 0xb


# instance fields
.field checksum:B

.field data:[B

.field len1:B

.field len2:B

.field sw1:B

.field sw2:B

.field sw3:B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len1:B

    .line 10
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len2:B

    .line 11
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw1:B

    .line 12
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw2:B

    .line 13
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw3:B

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    .line 15
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->checksum:B

    return-void
.end method


# virtual methods
.method public calcCheckSum()B
    .registers 4

    .line 45
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len1:B

    const/4 v1, 0x0

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    .line 46
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len2:B

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    .line 47
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw1:B

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    .line 48
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw2:B

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    .line 49
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw3:B

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    .line 50
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    array-length v2, v2

    if-lez v2, :cond_2c

    .line 52
    :goto_1e
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 54
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    aget-byte v2, v2, v1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2c
    return v0
.end method

.method public free()V
    .registers 2

    const/4 v0, 0x0

    .line 21
    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->checksum:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw3:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw2:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw1:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len2:B

    iput-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len1:B

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    return-void
.end method

.method public getChecksum()B
    .registers 2

    .line 39
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->checksum:B

    return v0
.end method

.method public getData([B)V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    array-length v0, v0

    if-lez v0, :cond_12

    .line 74
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    return-void
.end method

.method public getDataLen()I
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    if-eqz v0, :cond_8

    .line 65
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    array-length v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getSw1()B
    .registers 2

    .line 27
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw1:B

    return v0
.end method

.method public getSw2()B
    .registers 2

    .line 31
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw2:B

    return v0
.end method

.method public getSw3()B
    .registers 2

    .line 35
    iget-byte v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw3:B

    return v0
.end method

.method public preGetDataLen([B)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    .line 82
    array-length v1, p1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3a

    aget-byte v1, p1, v0

    const/16 v2, -0x56

    if-ne v1, v2, :cond_3a

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_3a

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_3a

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/16 v2, -0x6a

    if-ne v1, v2, :cond_3a

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    const/16 v2, 0x69

    if-eq v1, v2, :cond_27

    goto :goto_3a

    :cond_27
    const/4 v1, 0x5

    .line 89
    aget-byte v1, p1, v1

    const/4 v2, 0x6

    .line 90
    aget-byte p1, p1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x7

    return v1

    :cond_3a
    :goto_3a
    const-string p1, "invalid buffer1"

    .line 86
    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0
.end method

.method public preGetHIDDataLen([B)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 99
    array-length v1, p1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    goto :goto_1a

    .line 104
    :cond_8
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    .line 105
    aget-byte p1, p1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    return v1

    :cond_1a
    :goto_1a
    const-string p1, "invalid buffer1"

    .line 101
    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0
.end method

.method public unPacket([B)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_77

    .line 115
    array-length v1, p1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_77

    aget-byte v1, p1, v0

    const/16 v2, -0x56

    if-ne v1, v2, :cond_77

    const/4 v1, 0x1

    aget-byte v3, p1, v1

    if-ne v3, v2, :cond_77

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_77

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, -0x6a

    if-ne v2, v3, :cond_77

    const/4 v2, 0x4

    aget-byte v3, p1, v2

    const/16 v4, 0x69

    if-eq v3, v4, :cond_27

    goto :goto_77

    :cond_27
    const/4 v3, 0x5

    .line 122
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len1:B

    const/4 v3, 0x6

    .line 123
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len2:B

    .line 124
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len1:B

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v3, v0

    .line 125
    iget-byte v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len2:B

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    add-int/lit8 v5, v3, 0x7

    .line 126
    array-length v6, p1

    if-le v5, v6, :cond_4b

    const-string p1, "invalid buffer2"

    .line 128
    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0

    :cond_4b
    const/4 v5, 0x7

    .line 131
    aget-byte v5, p1, v5

    iput-byte v5, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw1:B

    .line 132
    aget-byte v4, p1, v4

    iput-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw2:B

    const/16 v4, 0x9

    .line 133
    aget-byte v4, p1, v4

    iput-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw3:B

    const/16 v4, 0xa

    if-le v3, v2, :cond_69

    sub-int/2addr v3, v2

    .line 137
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    .line 138
    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    invoke-static {p1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    .line 141
    :cond_69
    aget-byte p1, p1, v4

    iput-byte p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->checksum:B

    .line 142
    invoke-virtual {p0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->calcCheckSum()B

    move-result p1

    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->checksum:B

    if-eq p1, v2, :cond_76

    return v0

    :cond_76
    return v1

    :cond_77
    :goto_77
    const-string p1, "invalid buffer1"

    .line 119
    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0
.end method

.method public unPacketHID([B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    .line 153
    array-length v1, p1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    goto :goto_73

    .line 158
    :cond_8
    aget-byte v1, p1, v0

    iput-byte v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len1:B

    const/4 v1, 0x1

    .line 159
    aget-byte v2, p1, v1

    iput-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len2:B

    .line 160
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len1:B

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 161
    iget-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->len2:B

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x2

    .line 162
    array-length v4, p1

    if-le v3, v4, :cond_2a

    const-string p1, "invalid buffer2"

    .line 164
    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0

    :cond_2a
    const/4 v3, 0x2

    .line 167
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw1:B

    const/4 v3, 0x3

    .line 168
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw2:B

    const/4 v3, 0x4

    .line 169
    aget-byte v4, p1, v3

    iput-byte v4, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->sw3:B

    const/4 v4, 0x5

    if-le v2, v3, :cond_47

    sub-int/2addr v2, v3

    .line 173
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    .line 174
    iget-object v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->data:[B

    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v2

    .line 177
    :cond_47
    aget-byte p1, p1, v4

    iput-byte p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->checksum:B

    .line 178
    invoke-virtual {p0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->calcCheckSum()B

    move-result p1

    .line 179
    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->checksum:B

    if-eq p1, v2, :cond_72

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unpack buffer failed, because checksum is incorrect, check-read="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDCardReaderRetData;->checksum:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",but check-calc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0

    :cond_72
    return v1

    :cond_73
    :goto_73
    const-string p1, "invalid buffer1"

    .line 155
    invoke-static {p1}, Lcom/zkteco/android/biometric/core/utils/LogHelper;->e(Ljava/lang/String;)V

    return v0
.end method
