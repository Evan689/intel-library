.class public Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;
.super Ljava/lang/Object;
.source "IDPRPCardInfo.java"


# static fields
.field private static final BOY_CODE:Ljava/lang/String; = "1"


# instance fields
.field private birth:Ljava/lang/String;

.field private cnName:Ljava/lang/String;

.field private content:[B

.field private contentLength:I

.field private country:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private deptCode:Ljava/lang/String;

.field private enName:Ljava/lang/String;

.field private fpdata:[B

.field private fplength:I

.field private id:Ljava/lang/String;

.field private licType:Ljava/lang/String;

.field private licVer:Ljava/lang/String;

.field private photo:[B

.field private photolength:I

.field private sex:Ljava/lang/String;

.field private validityTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckType([BI)I
    .registers 10

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    const/4 v1, 0x0

    .line 589
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v4, 0x1

    .line 590
    aget-byte v5, p0, v4

    add-int/2addr v2, v5

    const/4 v5, 0x2

    .line 591
    aget-byte v6, p0, v5

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v3, v6

    const/4 v6, 0x3

    .line 592
    aget-byte v7, p0, v6

    add-int/2addr v3, v7

    add-int/2addr v3, v2

    if-le v3, p1, :cond_21

    const/4 p0, -0x2

    return p0

    :cond_21
    if-lez v2, :cond_8f

    .line 601
    new-array p1, v2, [B

    .line 602
    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    :try_start_28
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF16-LE"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 606
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    const/16 p0, 0x7c

    const/16 v0, 0x7d

    .line 607
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "I"

    .line 608
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    return v5

    :cond_4b
    const-string v0, "J"

    .line 612
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    return v6

    :cond_54
    const/16 p0, 0x10

    const/16 v0, 0x12

    .line 619
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 620
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 621
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8a

    const/16 p0, 0x3d

    const/16 v0, 0x43

    .line 623
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "810000"

    .line 624
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    const-string p1, "820000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    const-string p1, "830000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_28 .. :try_end_87} :catch_8b

    if-eqz p0, :cond_8a

    :cond_89
    return v6

    :cond_8a
    return v4

    :catch_8b
    move-exception p0

    .line 632
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_8f
    const/4 p0, -0x3

    return p0
.end method

.method public static CheckTypeEx([BI)I
    .registers 11

    const/4 v0, 0x6

    if-ge p1, v0, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    const/4 v1, 0x0

    .line 690
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v4, 0x1

    .line 691
    aget-byte v5, p0, v4

    add-int/2addr v2, v5

    const/4 v5, 0x2

    .line 692
    aget-byte v6, p0, v5

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v3

    const/4 v7, 0x3

    .line 693
    aget-byte v8, p0, v7

    add-int/2addr v6, v8

    const/4 v8, 0x4

    .line 694
    aget-byte v8, p0, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v3, v8

    const/4 v8, 0x5

    .line 695
    aget-byte v8, p0, v8

    add-int/2addr v3, v8

    add-int/2addr v6, v2

    add-int/2addr v6, v3

    if-le v6, p1, :cond_2c

    const/4 p0, -0x2

    return p0

    :cond_2c
    if-lez v2, :cond_64

    .line 705
    new-array p1, v2, [B

    .line 706
    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    :try_start_33
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF16-LE"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 710
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    const/16 p0, 0x7c

    const/16 v0, 0x7d

    .line 711
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "I"

    .line 712
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    return v5

    :cond_56
    const-string p1, "J"

    .line 716
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_5c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_5c} :catch_60

    if-eqz p0, :cond_5f

    return v7

    :cond_5f
    return v4

    :catch_60
    move-exception p0

    .line 725
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_64
    const/4 p0, -0x3

    return p0
.end method

.method private decodeIdCardBaseInfo([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF16-LE"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 478
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, 0x3c

    const/4 v1, 0x0

    .line 479
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setEnName(Ljava/lang/String;)V

    const/16 v1, 0x3d

    .line 480
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->getSex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setSex(Ljava/lang/String;)V

    const/16 v0, 0x4c

    .line 481
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setId(Ljava/lang/String;)V

    const/16 v1, 0x4f

    .line 482
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->countryCode:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->countryCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountryByCountryCode(Ljava/lang/String;)V

    const/16 v0, 0x5e

    .line 484
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCnName(Ljava/lang/String;)V

    const/16 v1, 0x6e

    .line 485
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->getValidityTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setValidityTime(Ljava/lang/String;)V

    const/16 v0, 0x76

    .line 486
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->getBirthDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setBirth(Ljava/lang/String;)V

    const/16 v1, 0x78

    .line 487
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setLicVer(Ljava/lang/String;)V

    const/16 v0, 0x7c

    .line 488
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setDeptCode(Ljava/lang/String;)V

    const/16 v1, 0x7d

    .line 489
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setLicType(Ljava/lang/String;)V

    return-void
.end method

.method private getBirthDay(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "年"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    .line 455
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "月"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 456
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "日"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getContent()[B
    .registers 2

    .line 524
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->content:[B

    return-object v0
.end method

.method private getContentLength()I
    .registers 2

    .line 498
    iget v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    return v0
.end method

.method private getSex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "1"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "男"

    return-object p1

    :cond_b
    const-string p1, "女"

    return-object p1
.end method

.method private getValidityTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "长期"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3c

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-长期"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 467
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    .line 470
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    .line 471
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    .line 472
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setBirth(Ljava/lang/String;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->birth:Ljava/lang/String;

    return-void
.end method

.method private setCnName(Ljava/lang/String;)V
    .registers 7

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 382
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    .line 385
    aget-byte v4, v0, v3

    if-nez v4, :cond_f

    move v1, v3

    goto :goto_12

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    :goto_12
    if-lez v1, :cond_1f

    .line 391
    array-length v3, v0

    if-ge v1, v3, :cond_1f

    .line 393
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->cnName:Ljava/lang/String;

    goto :goto_25

    .line 397
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->cnName:Ljava/lang/String;

    :goto_25
    return-void
.end method

.method private setCountry(Ljava/lang/String;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->country:Ljava/lang/String;

    return-void
.end method

.method private setCountryByCountryCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "AF"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ebc

    const-string v0, "AFG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ebc

    const-string v0, "004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_1ebc

    :cond_1a
    const-string v0, "AL"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb6

    const-string v0, "ALB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb6

    const-string v0, "008"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto/16 :goto_1eb6

    :cond_34
    const-string v0, "DZ"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb0

    const-string v0, "DZA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb0

    const-string v0, "012"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto/16 :goto_1eb0

    :cond_4e
    const-string v0, "AS"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eaa

    const-string v0, "ASM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eaa

    const-string v0, "016"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    goto/16 :goto_1eaa

    :cond_68
    const-string v0, "AD"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ea4

    const-string v0, "AND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ea4

    const-string v0, "020"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto/16 :goto_1ea4

    :cond_82
    const-string v0, "AO"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e9e

    const-string v0, "AGO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e9e

    const-string v0, "024"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    goto/16 :goto_1e9e

    :cond_9c
    const-string v0, "AI"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e98

    const-string v0, "AIA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e98

    const-string v0, "660"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    goto/16 :goto_1e98

    :cond_b6
    const-string v0, "AQ"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e92

    const-string v0, "ATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e92

    const-string v0, "010"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    goto/16 :goto_1e92

    :cond_d0
    const-string v0, "AG"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e8c

    const-string v0, "ATG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e8c

    const-string v0, "028"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    goto/16 :goto_1e8c

    :cond_ea
    const-string v0, "AR"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e86

    const-string v0, "ARG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e86

    const-string v0, "032"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    goto/16 :goto_1e86

    :cond_104
    const-string v0, "AM"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e80

    const-string v0, "ARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e80

    const-string v0, "051"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    goto/16 :goto_1e80

    :cond_11e
    const-string v0, "AW"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e7a

    const-string v0, "ABW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e7a

    const-string v0, "533"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    goto/16 :goto_1e7a

    :cond_138
    const-string v0, "AU"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e74

    const-string v0, "AUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e74

    const-string v0, "036"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    goto/16 :goto_1e74

    :cond_152
    const-string v0, "AT"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e6e

    const-string v0, "AUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e6e

    const-string v0, "040"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    goto/16 :goto_1e6e

    :cond_16c
    const-string v0, "AZ"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e68

    const-string v0, "AZE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e68

    const-string v0, "031"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    goto/16 :goto_1e68

    :cond_186
    const-string v0, "BS"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e62

    const-string v0, "BHS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e62

    const-string v0, "044"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    goto/16 :goto_1e62

    :cond_1a0
    const-string v0, "BH"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5b

    const-string v0, "BHR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5b

    const-string v0, "048"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    goto/16 :goto_1e5b

    :cond_1ba
    const-string v0, "BD"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e54

    const-string v0, "BGD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e54

    const-string v0, "050"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    goto/16 :goto_1e54

    :cond_1d4
    const-string v0, "BB"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e4d

    const-string v0, "BRB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e4d

    const-string v0, "052"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    goto/16 :goto_1e4d

    :cond_1ee
    const-string v0, "BY"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e46

    const-string v0, "BLR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e46

    const-string v0, "112"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_208

    goto/16 :goto_1e46

    :cond_208
    const-string v0, "BE"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e3f

    const-string v0, "BEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e3f

    const-string v0, "056"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_222

    goto/16 :goto_1e3f

    :cond_222
    const-string v0, "BZ"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e38

    const-string v0, "BLZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e38

    const-string v0, "084"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    goto/16 :goto_1e38

    :cond_23c
    const-string v0, "BJ"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e31

    const-string v0, "BEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e31

    const-string v0, "204"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_256

    goto/16 :goto_1e31

    :cond_256
    const-string v0, "BM"

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e2a

    const-string v0, "BMU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e2a

    const-string v0, "060"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_270

    goto/16 :goto_1e2a

    :cond_270
    const-string v0, "BT"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e23

    const-string v0, "BTN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e23

    const-string v0, "064"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28a

    goto/16 :goto_1e23

    :cond_28a
    const-string v0, "BO"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e1c

    const-string v0, "BOL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e1c

    const-string v0, "068"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a4

    goto/16 :goto_1e1c

    :cond_2a4
    const-string v0, "BA"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e15

    const-string v0, "BIH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e15

    const-string v0, "070"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2be

    goto/16 :goto_1e15

    :cond_2be
    const-string v0, "BW"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e0e

    const-string v0, "BWA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e0e

    const-string v0, "072"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    goto/16 :goto_1e0e

    :cond_2d8
    const-string v0, "BV"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e07

    const-string v0, "BVT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e07

    const-string v0, "074"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    goto/16 :goto_1e07

    :cond_2f2
    const-string v0, "BR"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e00

    const-string v0, "BRA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e00

    const-string v0, "076"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30c

    goto/16 :goto_1e00

    :cond_30c
    const-string v0, "IO"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1df9

    const-string v0, "IOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1df9

    const-string v0, "086"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_326

    goto/16 :goto_1df9

    :cond_326
    const-string v0, "BN"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1df2

    const-string v0, "BRN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1df2

    const-string v0, "096"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_340

    goto/16 :goto_1df2

    :cond_340
    const-string v0, "BG"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1deb

    const-string v0, "BGR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1deb

    const-string v0, "100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35a

    goto/16 :goto_1deb

    :cond_35a
    const-string v0, "BF"

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1de4

    const-string v0, "BFA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1de4

    const-string v0, "854"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_374

    goto/16 :goto_1de4

    :cond_374
    const-string v0, "BI"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ddd

    const-string v0, "BDI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ddd

    const-string v0, "108"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38e

    goto/16 :goto_1ddd

    :cond_38e
    const-string v0, "KH"

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dd6

    const-string v0, "KHM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dd6

    const-string v0, "116"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a8

    goto/16 :goto_1dd6

    :cond_3a8
    const-string v0, "CM"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dcf

    const-string v0, "CMR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dcf

    const-string v0, "120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c2

    goto/16 :goto_1dcf

    :cond_3c2
    const-string v0, "CA"

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc8

    const-string v0, "CAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc8

    const-string v0, "124"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3dc

    goto/16 :goto_1dc8

    :cond_3dc
    const-string v0, "CV"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc1

    const-string v0, "CPV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc1

    const-string v0, "132"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f6

    goto/16 :goto_1dc1

    :cond_3f6
    const-string v0, "KY"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dba

    const-string v0, "CYM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dba

    const-string v0, "136"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_410

    goto/16 :goto_1dba

    :cond_410
    const-string v0, "CF"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db3

    const-string v0, "CAF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db3

    const-string v0, "140"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42a

    goto/16 :goto_1db3

    :cond_42a
    const-string v0, "TD"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dac

    const-string v0, "TCD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dac

    const-string v0, "148"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_444

    goto/16 :goto_1dac

    :cond_444
    const-string v0, "CL"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1da5

    const-string v0, "CHL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1da5

    const-string v0, "152"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45e

    goto/16 :goto_1da5

    :cond_45e
    const-string v0, "CN"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d9e

    const-string v0, "CHN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d9e

    const-string v0, "156"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_478

    goto/16 :goto_1d9e

    :cond_478
    const-string v0, "HK"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d97

    const-string v0, "HKG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d97

    const-string v0, "344"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_492

    goto/16 :goto_1d97

    :cond_492
    const-string v0, "MO"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d90

    const-string v0, "MAC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d90

    const-string v0, "446"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ac

    goto/16 :goto_1d90

    :cond_4ac
    const-string v0, "TW"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d89

    const-string v0, "TWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d89

    const-string v0, "158"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c6

    goto/16 :goto_1d89

    :cond_4c6
    const-string v0, "CS"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d82

    const-string v0, "CSR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d82

    const-string v0, "162"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e0

    goto/16 :goto_1d82

    :cond_4e0
    const-string v0, "CC"

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d7b

    const-string v0, "CCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d7b

    const-string v0, "166"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fa

    goto/16 :goto_1d7b

    :cond_4fa
    const-string v0, "Co"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d74

    const-string v0, "COL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d74

    const-string v0, "170"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_514

    goto/16 :goto_1d74

    :cond_514
    const-string v0, "KM"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d6d

    const-string v0, "COM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d6d

    const-string v0, "174"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52e

    goto/16 :goto_1d6d

    :cond_52e
    const-string v0, "CG"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d66

    const-string v0, "COG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d66

    const-string v0, "178"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_548

    goto/16 :goto_1d66

    :cond_548
    const-string v0, "CD"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d5f

    const-string v0, "COD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d5f

    const-string v0, "180"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_562

    goto/16 :goto_1d5f

    :cond_562
    const-string v0, "CK"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d58

    const-string v0, "COK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d58

    const-string v0, "184"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57c

    goto/16 :goto_1d58

    :cond_57c
    const-string v0, "CR"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d51

    const-string v0, "CR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d51

    const-string v0, "188"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_596

    goto/16 :goto_1d51

    :cond_596
    const-string v0, "CI"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d4a

    const-string v0, "CIV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d4a

    const-string v0, "384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b0

    goto/16 :goto_1d4a

    :cond_5b0
    const-string v0, "HR"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d43

    const-string v0, "HRV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d43

    const-string v0, "191"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ca

    goto/16 :goto_1d43

    :cond_5ca
    const-string v0, "CU"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d3c

    const-string v0, "CUB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d3c

    const-string v0, "192"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e4

    goto/16 :goto_1d3c

    :cond_5e4
    const-string v0, "CY"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d35

    const-string v0, "CYP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d35

    const-string v0, "196"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5fe

    goto/16 :goto_1d35

    :cond_5fe
    const-string v0, "CZ"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d2e

    const-string v0, "CZE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d2e

    const-string v0, "203"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_618

    goto/16 :goto_1d2e

    :cond_618
    const-string v0, "DK"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d27

    const-string v0, "DNK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d27

    const-string v0, "208"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_632

    goto/16 :goto_1d27

    :cond_632
    const-string v0, "DJ"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d20

    const-string v0, "DJI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d20

    const-string v0, "262"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64c

    goto/16 :goto_1d20

    :cond_64c
    const-string v0, "DM"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d19

    const-string v0, "DMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d19

    const-string v0, "212"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_666

    goto/16 :goto_1d19

    :cond_666
    const-string v0, "DO"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d12

    const-string v0, "DOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d12

    const-string v0, "214"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_680

    goto/16 :goto_1d12

    :cond_680
    const-string v0, "TP"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d0b

    const-string v0, "TMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d0b

    const-string v0, "626"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69a

    goto/16 :goto_1d0b

    :cond_69a
    const-string v0, "EC"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d04

    const-string v0, "ECU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d04

    const-string v0, "218"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b4

    goto/16 :goto_1d04

    :cond_6b4
    const-string v0, "EG"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cfd

    const-string v0, "EGY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cfd

    const-string v0, "818"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6ce

    goto/16 :goto_1cfd

    :cond_6ce
    const-string v0, "SV"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cf6

    const-string v0, "SLV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cf6

    const-string v0, "222"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e8

    goto/16 :goto_1cf6

    :cond_6e8
    const-string v0, "GQ"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cef

    const-string v0, "GNQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cef

    const-string v0, "226"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_702

    goto/16 :goto_1cef

    :cond_702
    const-string v0, "ER"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ce8

    const-string v0, "ERI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ce8

    const-string v0, "232"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71c

    goto/16 :goto_1ce8

    :cond_71c
    const-string v0, "EE"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ce1

    const-string v0, "EST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ce1

    const-string v0, "233"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_736

    goto/16 :goto_1ce1

    :cond_736
    const-string v0, "ET"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cda

    const-string v0, "ETH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cda

    const-string v0, "231"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_750

    goto/16 :goto_1cda

    :cond_750
    const-string v0, "FK"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cd3

    const-string v0, "FLK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cd3

    const-string v0, "238"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76a

    goto/16 :goto_1cd3

    :cond_76a
    const-string v0, "FO"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ccc

    const-string v0, "FRO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ccc

    const-string v0, "234"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_784

    goto/16 :goto_1ccc

    :cond_784
    const-string v0, "FJ"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cc5

    const-string v0, "FJI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cc5

    const-string v0, "242"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79e

    goto/16 :goto_1cc5

    :cond_79e
    const-string v0, "FI"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cbe

    const-string v0, "FIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cbe

    const-string v0, "246"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b8

    goto/16 :goto_1cbe

    :cond_7b8
    const-string v0, "FR"

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cb7

    const-string v0, "FRA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cb7

    const-string v0, "250"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d2

    goto/16 :goto_1cb7

    :cond_7d2
    const-string v0, "GF"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cb0

    const-string v0, "GUF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cb0

    const-string v0, "254"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7ec

    goto/16 :goto_1cb0

    :cond_7ec
    const-string v0, "PF"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca9

    const-string v0, "PYF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca9

    const-string v0, "258"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_806

    goto/16 :goto_1ca9

    :cond_806
    const-string v0, "TF"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca2

    const-string v0, "ATF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca2

    const-string v0, "260"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_820

    goto/16 :goto_1ca2

    :cond_820
    const-string v0, "GA"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c9b

    const-string v0, "GAB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c9b

    const-string v0, "266"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83a

    goto/16 :goto_1c9b

    :cond_83a
    const-string v0, "GM"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c94

    const-string v0, "GMB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c94

    const-string v0, "270"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_854

    goto/16 :goto_1c94

    :cond_854
    const-string v0, "GE"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c8d

    const-string v0, "GEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c8d

    const-string v0, "268"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86e

    goto/16 :goto_1c8d

    :cond_86e
    const-string v0, "DE"

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c86

    const-string v0, "DEU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c86

    const-string v0, "276"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_888

    goto/16 :goto_1c86

    :cond_888
    const-string v0, "GH"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c7f

    const-string v0, "GHA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c7f

    const-string v0, "288"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a2

    goto/16 :goto_1c7f

    :cond_8a2
    const-string v0, "GI"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c78

    const-string v0, "GIB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c78

    const-string v0, "292"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8bc

    goto/16 :goto_1c78

    :cond_8bc
    const-string v0, "GR"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c71

    const-string v0, "GRC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c71

    const-string v0, "300"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d6

    goto/16 :goto_1c71

    :cond_8d6
    const-string v0, "GL"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c6a

    const-string v0, "GRL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c6a

    const-string v0, "304"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f0

    goto/16 :goto_1c6a

    :cond_8f0
    const-string v0, "GD"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c63

    const-string v0, "GRD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c63

    const-string v0, "308"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90a

    goto/16 :goto_1c63

    :cond_90a
    const-string v0, "GP"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c5c

    const-string v0, "GLP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c5c

    const-string v0, "312"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_924

    goto/16 :goto_1c5c

    :cond_924
    const-string v0, "GU"

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c55

    const-string v0, "GUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c55

    const-string v0, "316"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93e

    goto/16 :goto_1c55

    :cond_93e
    const-string v0, "GT"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c4e

    const-string v0, "GTM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c4e

    const-string v0, "320"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_958

    goto/16 :goto_1c4e

    :cond_958
    const-string v0, "GN"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c47

    const-string v0, "GIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c47

    const-string v0, "324"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_972

    goto/16 :goto_1c47

    :cond_972
    const-string v0, "GW"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c40

    const-string v0, "GNB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c40

    const-string v0, "624"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98c

    goto/16 :goto_1c40

    :cond_98c
    const-string v0, "GY"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c39

    const-string v0, "GUY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c39

    const-string v0, "328"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a6

    goto/16 :goto_1c39

    :cond_9a6
    const-string v0, "HT"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c32

    const-string v0, "HTI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c32

    const-string v0, "332"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c0

    goto/16 :goto_1c32

    :cond_9c0
    const-string v0, "HM"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c2b

    const-string v0, "HMD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c2b

    const-string v0, "334"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9da

    goto/16 :goto_1c2b

    :cond_9da
    const-string v0, "HN"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c24

    const-string v0, "HND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c24

    const-string v0, "340"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f4

    goto/16 :goto_1c24

    :cond_9f4
    const-string v0, "HU"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c1d

    const-string v0, "HUN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c1d

    const-string v0, "348"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0e

    goto/16 :goto_1c1d

    :cond_a0e
    const-string v0, "IS"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c16

    const-string v0, "ISL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c16

    const-string v0, "352"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a28

    goto/16 :goto_1c16

    :cond_a28
    const-string v0, "IN"

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c0f

    const-string v0, "IND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c0f

    const-string v0, "356"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a42

    goto/16 :goto_1c0f

    :cond_a42
    const-string v0, "ID"

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c08

    const-string v0, "IDN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c08

    const-string v0, "360"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5c

    goto/16 :goto_1c08

    :cond_a5c
    const-string v0, "IR"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c01

    const-string v0, "IRN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c01

    const-string v0, "364"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a76

    goto/16 :goto_1c01

    :cond_a76
    const-string v0, "IQ"

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bfa

    const-string v0, "IRQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bfa

    const-string v0, "368"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a90

    goto/16 :goto_1bfa

    :cond_a90
    const-string v0, "IE"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bf3

    const-string v0, "IRL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bf3

    const-string v0, "372"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aaa

    goto/16 :goto_1bf3

    :cond_aaa
    const-string v0, "IL"

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bec

    const-string v0, "ISR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bec

    const-string v0, "376"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac4

    goto/16 :goto_1bec

    :cond_ac4
    const-string v0, "IT"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1be5

    const-string v0, "ITA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1be5

    const-string v0, "380"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ade

    goto/16 :goto_1be5

    :cond_ade
    const-string v0, "JM"

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bde

    const-string v0, "JAM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bde

    const-string v0, "388"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af8

    goto/16 :goto_1bde

    :cond_af8
    const-string v0, "JP"

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bd7

    const-string v0, "JPN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bd7

    const-string v0, "392"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b12

    goto/16 :goto_1bd7

    :cond_b12
    const-string v0, "JO"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bd0

    const-string v0, "JOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bd0

    const-string v0, "400"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2c

    goto/16 :goto_1bd0

    :cond_b2c
    const-string v0, "KZ"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bc9

    const-string v0, "KAZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bc9

    const-string v0, "398"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b46

    goto/16 :goto_1bc9

    :cond_b46
    const-string v0, "KE"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bc2

    const-string v0, "KEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bc2

    const-string v0, "404"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b60

    goto/16 :goto_1bc2

    :cond_b60
    const-string v0, "KI"

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bbb

    const-string v0, "KIR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bbb

    const-string v0, "296"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7a

    goto/16 :goto_1bbb

    :cond_b7a
    const-string v0, "KP"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bb4

    const-string v0, "PRK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bb4

    const-string v0, "408"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b94

    goto/16 :goto_1bb4

    :cond_b94
    const-string v0, "KR"

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bad

    const-string v0, "KOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bad

    const-string v0, "410"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bae

    goto/16 :goto_1bad

    :cond_bae
    const-string v0, "KW"

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ba6

    const-string v0, "KWT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ba6

    const-string v0, "414"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc8

    goto/16 :goto_1ba6

    :cond_bc8
    const-string v0, "KG"

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b9f

    const-string v0, "KGZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b9f

    const-string v0, "417"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be2

    goto/16 :goto_1b9f

    :cond_be2
    const-string v0, "LA"

    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b98

    const-string v0, "LAO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b98

    const-string v0, "418"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bfc

    goto/16 :goto_1b98

    :cond_bfc
    const-string v0, "LV"

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b91

    const-string v0, "LVA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b91

    const-string v0, "428"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c16

    goto/16 :goto_1b91

    :cond_c16
    const-string v0, "LB"

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b8a

    const-string v0, "LBN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b8a

    const-string v0, "422"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c30

    goto/16 :goto_1b8a

    :cond_c30
    const-string v0, "LS"

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b83

    const-string v0, "LSO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b83

    const-string v0, "426"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4a

    goto/16 :goto_1b83

    :cond_c4a
    const-string v0, "LR"

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7c

    const-string v0, "LBR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7c

    const-string v0, "430"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c64

    goto/16 :goto_1b7c

    :cond_c64
    const-string v0, "LY"

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b75

    const-string v0, "LBY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b75

    const-string v0, "434"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7e

    goto/16 :goto_1b75

    :cond_c7e
    const-string v0, "LI"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6e

    const-string v0, "LIE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6e

    const-string v0, "438"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c98

    goto/16 :goto_1b6e

    :cond_c98
    const-string v0, "LT"

    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b67

    const-string v0, "LTU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b67

    const-string v0, "440"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb2

    goto/16 :goto_1b67

    :cond_cb2
    const-string v0, "LU"

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b60

    const-string v0, "LUX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b60

    const-string v0, "442"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ccc

    goto/16 :goto_1b60

    :cond_ccc
    const-string v0, "MK"

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b59

    const-string v0, "MKD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b59

    const-string v0, "807"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce6

    goto/16 :goto_1b59

    :cond_ce6
    const-string v0, "MG"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b52

    const-string v0, "MDG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b52

    const-string v0, "450"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d00

    goto/16 :goto_1b52

    :cond_d00
    const-string v0, "MW"

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b4b

    const-string v0, "MWI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b4b

    const-string v0, "454"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1a

    goto/16 :goto_1b4b

    :cond_d1a
    const-string v0, "MY"

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b44

    const-string v0, "MYS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b44

    const-string v0, "458"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d34

    goto/16 :goto_1b44

    :cond_d34
    const-string v0, "MV"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b3d

    const-string v0, "MDV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b3d

    const-string v0, "462"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4e

    goto/16 :goto_1b3d

    :cond_d4e
    const-string v0, "ML"

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b36

    const-string v0, "MLI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b36

    const-string v0, "466"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d68

    goto/16 :goto_1b36

    :cond_d68
    const-string v0, "MT"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b2f

    const-string v0, "MLT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b2f

    const-string v0, "470"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d82

    goto/16 :goto_1b2f

    :cond_d82
    const-string v0, "MH"

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b28

    const-string v0, "MHL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b28

    const-string v0, "584"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9c

    goto/16 :goto_1b28

    :cond_d9c
    const-string v0, "MQ"

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b21

    const-string v0, "MTQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b21

    const-string v0, "474"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db6

    goto/16 :goto_1b21

    :cond_db6
    const-string v0, "MR"

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b1a

    const-string v0, "MRT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b1a

    const-string v0, "478"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd0

    goto/16 :goto_1b1a

    :cond_dd0
    const-string v0, "MU"

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b13

    const-string v0, "MUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b13

    const-string v0, "480"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dea

    goto/16 :goto_1b13

    :cond_dea
    const-string v0, "YT"

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0c

    const-string v0, "MYT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0c

    const-string v0, "175"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e04

    goto/16 :goto_1b0c

    :cond_e04
    const-string v0, "MX"

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b05

    const-string v0, "MEX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b05

    const-string v0, "484"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1e

    goto/16 :goto_1b05

    :cond_e1e
    const-string v0, "FM"

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1afe

    const-string v0, "FSM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1afe

    const-string v0, "583"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e38

    goto/16 :goto_1afe

    :cond_e38
    const-string v0, "MD"

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af7

    const-string v0, "MDA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af7

    const-string v0, "498"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e52

    goto/16 :goto_1af7

    :cond_e52
    const-string v0, "MC"

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af0

    const-string v0, "MCO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af0

    const-string v0, "492"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6c

    goto/16 :goto_1af0

    :cond_e6c
    const-string v0, "MN"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae9

    const-string v0, "MNG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae9

    const-string v0, "496"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e86

    goto/16 :goto_1ae9

    :cond_e86
    const-string v0, "MS"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae2

    const-string v0, "MSR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae2

    const-string v0, "500"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea0

    goto/16 :goto_1ae2

    :cond_ea0
    const-string v0, "MA"

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1adb

    const-string v0, "MAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1adb

    const-string v0, "504"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eba

    goto/16 :goto_1adb

    :cond_eba
    const-string v0, "MZ"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ad4

    const-string v0, "MOZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ad4

    const-string v0, "508"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed4

    goto/16 :goto_1ad4

    :cond_ed4
    const-string v0, "MM"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1acd

    const-string v0, "MMR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1acd

    const-string v0, "104"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eee

    goto/16 :goto_1acd

    :cond_eee
    const-string v0, "NA"

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ac6

    const-string v0, "NAM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ac6

    const-string v0, "516"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f08

    goto/16 :goto_1ac6

    :cond_f08
    const-string v0, "NR"

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1abf

    const-string v0, "NRU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1abf

    const-string v0, "520"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f22

    goto/16 :goto_1abf

    :cond_f22
    const-string v0, "NP"

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ab8

    const-string v0, "NPL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ab8

    const-string v0, "524"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3c

    goto/16 :goto_1ab8

    :cond_f3c
    const-string v0, "NL"

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ab1

    const-string v0, "NLD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ab1

    const-string v0, "528"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f56

    goto/16 :goto_1ab1

    :cond_f56
    const-string v0, "AN"

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1aaa

    const-string v0, "ANT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1aaa

    const-string v0, "530"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f70

    goto/16 :goto_1aaa

    :cond_f70
    const-string v0, "NC"

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1aa3

    const-string v0, "NCL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1aa3

    const-string v0, "540"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8a

    goto/16 :goto_1aa3

    :cond_f8a
    const-string v0, "NZ"

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a9c

    const-string v0, "NZL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a9c

    const-string v0, "554"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa4

    goto/16 :goto_1a9c

    :cond_fa4
    const-string v0, "NI"

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a95

    const-string v0, "NIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a95

    const-string v0, "558"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fbe

    goto/16 :goto_1a95

    :cond_fbe
    const-string v0, "NE"

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a8e

    const-string v0, "NER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a8e

    const-string v0, "562"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd8

    goto/16 :goto_1a8e

    :cond_fd8
    const-string v0, "NG"

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a87

    const-string v0, "NGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a87

    const-string v0, "566"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff2

    goto/16 :goto_1a87

    :cond_ff2
    const-string v0, "NU"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a80

    const-string v0, "NIU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a80

    const-string v0, "570"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100c

    goto/16 :goto_1a80

    :cond_100c
    const-string v0, "NF"

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a79

    const-string v0, "NFK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a79

    const-string v0, "574"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1026

    goto/16 :goto_1a79

    :cond_1026
    const-string v0, "MP"

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a72

    const-string v0, "MNP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a72

    const-string v0, "580"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1040

    goto/16 :goto_1a72

    :cond_1040
    const-string v0, "NO"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a6b

    const-string v0, "NOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a6b

    const-string v0, "578"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105a

    goto/16 :goto_1a6b

    :cond_105a
    const-string v0, "OM"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a64

    const-string v0, "OMN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a64

    const-string v0, "512"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1074

    goto/16 :goto_1a64

    :cond_1074
    const-string v0, "PK"

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a5d

    const-string v0, "PAK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a5d

    const-string v0, "586"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108e

    goto/16 :goto_1a5d

    :cond_108e
    const-string v0, "PW"

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a56

    const-string v0, "PLW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a56

    const-string v0, "585"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a8

    goto/16 :goto_1a56

    :cond_10a8
    const-string v0, "PS"

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4f

    const-string v0, "PST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4f

    const-string v0, "374"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c2

    goto/16 :goto_1a4f

    :cond_10c2
    const-string v0, "PA"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a48

    const-string v0, "PAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a48

    const-string v0, "591"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10dc

    goto/16 :goto_1a48

    :cond_10dc
    const-string v0, "PG"

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a41

    const-string v0, "PNG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a41

    const-string v0, "598"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f6

    goto/16 :goto_1a41

    :cond_10f6
    const-string v0, "PY"

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a3a

    const-string v0, "PRY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a3a

    const-string v0, "600"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1110

    goto/16 :goto_1a3a

    :cond_1110
    const-string v0, "PE"

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a33

    const-string v0, "PER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a33

    const-string v0, "604"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112a

    goto/16 :goto_1a33

    :cond_112a
    const-string v0, "PH"

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a2c

    const-string v0, "PHL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a2c

    const-string v0, "608"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1144

    goto/16 :goto_1a2c

    :cond_1144
    const-string v0, "PN"

    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a25

    const-string v0, "PCN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a25

    const-string v0, "612"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115e

    goto/16 :goto_1a25

    :cond_115e
    const-string v0, "PL"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a1e

    const-string v0, "POL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a1e

    const-string v0, "616"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1178

    goto/16 :goto_1a1e

    :cond_1178
    const-string v0, "PT"

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a17

    const-string v0, "PRT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a17

    const-string v0, "620"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1192

    goto/16 :goto_1a17

    :cond_1192
    const-string v0, "PR"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a10

    const-string v0, "PRI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a10

    const-string v0, "630"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11ac

    goto/16 :goto_1a10

    :cond_11ac
    const-string v0, "QA"

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a09

    const-string v0, "QAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a09

    const-string v0, "634"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c6

    goto/16 :goto_1a09

    :cond_11c6
    const-string v0, "RE"

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a02

    const-string v0, "REU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a02

    const-string v0, "638"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e0

    goto/16 :goto_1a02

    :cond_11e0
    const-string v0, "RO"

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19fb

    const-string v0, "ROM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19fb

    const-string v0, "642"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11fa

    goto/16 :goto_19fb

    :cond_11fa
    const-string v0, "RU"

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19f4

    const-string v0, "RUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19f4

    const-string v0, "643"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1214

    goto/16 :goto_19f4

    :cond_1214
    const-string v0, "RW"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19ed

    const-string v0, "RWA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19ed

    const-string v0, "646"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122e

    goto/16 :goto_19ed

    :cond_122e
    const-string v0, "Sh"

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19e6

    const-string v0, "SHN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19e6

    const-string v0, "654"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1248

    goto/16 :goto_19e6

    :cond_1248
    const-string v0, "KN"

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19df

    const-string v0, "KNA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19df

    const-string v0, "659"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1262

    goto/16 :goto_19df

    :cond_1262
    const-string v0, "LC"

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19d8

    const-string v0, "LCA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19d8

    const-string v0, "662"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127c

    goto/16 :goto_19d8

    :cond_127c
    const-string v0, "PM"

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19d1

    const-string v0, "SPM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19d1

    const-string v0, "666"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1296

    goto/16 :goto_19d1

    :cond_1296
    const-string v0, "VC"

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19ca

    const-string v0, "VCT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19ca

    const-string v0, "670"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b0

    goto/16 :goto_19ca

    :cond_12b0
    const-string v0, "WS"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c3

    const-string v0, "WSM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c3

    const-string v0, "882"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12ca

    goto/16 :goto_19c3

    :cond_12ca
    const-string v0, "SM"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19bc

    const-string v0, "SMR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19bc

    const-string v0, "674"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e4

    goto/16 :goto_19bc

    :cond_12e4
    const-string v0, "St"

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19b5

    const-string v0, "STp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19b5

    const-string v0, "678"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12fe

    goto/16 :goto_19b5

    :cond_12fe
    const-string v0, "SA"

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19ae

    const-string v0, "SAU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19ae

    const-string v0, "682"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1318

    goto/16 :goto_19ae

    :cond_1318
    const-string v0, "SN"

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19a7

    const-string v0, "SEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19a7

    const-string v0, "686"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1332

    goto/16 :goto_19a7

    :cond_1332
    const-string v0, "SC"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19a0

    const-string v0, "SYC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19a0

    const-string v0, "690"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134c

    goto/16 :goto_19a0

    :cond_134c
    const-string v0, "SL"

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1999

    const-string v0, "SLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1999

    const-string v0, "694"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1366

    goto/16 :goto_1999

    :cond_1366
    const-string v0, "SG"

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1992

    const-string v0, "SGP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1992

    const-string v0, "702"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1380

    goto/16 :goto_1992

    :cond_1380
    const-string v0, "SK"

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_198b

    const-string v0, "SVK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_198b

    const-string v0, "703"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139a

    goto/16 :goto_198b

    :cond_139a
    const-string v0, "SI"

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1984

    const-string v0, "SVN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1984

    const-string v0, "705"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b4

    goto/16 :goto_1984

    :cond_13b4
    const-string v0, "SB"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_197d

    const-string v0, "SLB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_197d

    const-string v0, "090"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13ce

    goto/16 :goto_197d

    :cond_13ce
    const-string v0, "SO"

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1976

    const-string v0, "SOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1976

    const-string v0, "706"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e8

    goto/16 :goto_1976

    :cond_13e8
    const-string v0, "ZA"

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196f

    const-string v0, "ZAF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196f

    const-string v0, "710"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1402

    goto/16 :goto_196f

    :cond_1402
    const-string v0, "GS"

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1968

    const-string v0, "SGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1968

    const-string v0, "239"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141c

    goto/16 :goto_1968

    :cond_141c
    const-string v0, "ES"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1961

    const-string v0, "ESP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1961

    const-string v0, "724"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1436

    goto/16 :goto_1961

    :cond_1436
    const-string v0, "LK"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_195a

    const-string v0, "LKA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_195a

    const-string v0, "144"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1450

    goto/16 :goto_195a

    :cond_1450
    const-string v0, "SD"

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1953

    const-string v0, "SDN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1953

    const-string v0, "736"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146a

    goto/16 :goto_1953

    :cond_146a
    const-string v0, "SR"

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_194c

    const-string v0, "SUR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_194c

    const-string v0, "740"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1484

    goto/16 :goto_194c

    :cond_1484
    const-string v0, "SJ"

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1945

    const-string v0, "SJM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1945

    const-string v0, "744"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149e

    goto/16 :goto_1945

    :cond_149e
    const-string v0, "SZ"

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193e

    const-string v0, "SWZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193e

    const-string v0, "748"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b8

    goto/16 :goto_193e

    :cond_14b8
    const-string v0, "SE"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1937

    const-string v0, "SWE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1937

    const-string v0, "752"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d2

    goto/16 :goto_1937

    :cond_14d2
    const-string v0, "CH"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1930

    const-string v0, "CHE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1930

    const-string v0, "756"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14ec

    goto/16 :goto_1930

    :cond_14ec
    const-string v0, "SY"

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1929

    const-string v0, "SYR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1929

    const-string v0, "760"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1506

    goto/16 :goto_1929

    :cond_1506
    const-string v0, "TJ"

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1922

    const-string v0, "TJK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1922

    const-string v0, "762"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1520

    goto/16 :goto_1922

    :cond_1520
    const-string v0, "TZ"

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_191b

    const-string v0, "TZA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_191b

    const-string v0, "834"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153a

    goto/16 :goto_191b

    :cond_153a
    const-string v0, "TH"

    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1914

    const-string v0, "THA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1914

    const-string v0, "764"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1554

    goto/16 :goto_1914

    :cond_1554
    const-string v0, "TG"

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190d

    const-string v0, "TGO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190d

    const-string v0, "768"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156e

    goto/16 :goto_190d

    :cond_156e
    const-string v0, "TK"

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1906

    const-string v0, "TKL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1906

    const-string v0, "772"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1588

    goto/16 :goto_1906

    :cond_1588
    const-string v0, "TO"

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18ff

    const-string v0, "TON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18ff

    const-string v0, "776"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a2

    goto/16 :goto_18ff

    :cond_15a2
    const-string v0, "TT"

    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18f8

    const-string v0, "TTO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18f8

    const-string v0, "780"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15bc

    goto/16 :goto_18f8

    :cond_15bc
    const-string v0, "TN"

    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18f1

    const-string v0, "TUN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18f1

    const-string v0, "788"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15d6

    goto/16 :goto_18f1

    :cond_15d6
    const-string v0, "TR"

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18ea

    const-string v0, "TUR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18ea

    const-string v0, "792"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f0

    goto/16 :goto_18ea

    :cond_15f0
    const-string v0, "TM"

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18e3

    const-string v0, "TKM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18e3

    const-string v0, "795"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160a

    goto/16 :goto_18e3

    :cond_160a
    const-string v0, "TC"

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18dc

    const-string v0, "TCA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18dc

    const-string v0, "796"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1624

    goto/16 :goto_18dc

    :cond_1624
    const-string v0, "TV"

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18d5

    const-string v0, "TUV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18d5

    const-string v0, "798"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163e

    goto/16 :goto_18d5

    :cond_163e
    const-string v0, "UG"

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18ce

    const-string v0, "UGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18ce

    const-string v0, "800"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1658

    goto/16 :goto_18ce

    :cond_1658
    const-string v0, "UA"

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c7

    const-string v0, "UKR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c7

    const-string v0, "804"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1672

    goto/16 :goto_18c7

    :cond_1672
    const-string v0, "AE"

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c0

    const-string v0, "ARE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c0

    const-string v0, "784"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168c

    goto/16 :goto_18c0

    :cond_168c
    const-string v0, "GB"

    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18b9

    const-string v0, "GBR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18b9

    const-string v0, "826"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a6

    goto/16 :goto_18b9

    :cond_16a6
    const-string v0, "US"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18b2

    const-string v0, "USA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18b2

    const-string v0, "840"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c0

    goto/16 :goto_18b2

    :cond_16c0
    const-string v0, "UM"

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18ab

    const-string v0, "UMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18ab

    const-string v0, "581"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16da

    goto/16 :goto_18ab

    :cond_16da
    const-string v0, "UY"

    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18a4

    const-string v0, "URY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18a4

    const-string v0, "858"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f4

    goto/16 :goto_18a4

    :cond_16f4
    const-string v0, "UZ"

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189d

    const-string v0, "UZB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189d

    const-string v0, "860"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170e

    goto/16 :goto_189d

    :cond_170e
    const-string v0, "VU"

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1896

    const-string v0, "VUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1896

    const-string v0, "548"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1728

    goto/16 :goto_1896

    :cond_1728
    const-string v0, "VA"

    .line 357
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_188f

    const-string v0, "VAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_188f

    const-string v0, "336"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1742

    goto/16 :goto_188f

    :cond_1742
    const-string v0, "VE"

    .line 358
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1888

    const-string v0, "VEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1888

    const-string v0, "862"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175c

    goto/16 :goto_1888

    :cond_175c
    const-string v0, "VN"

    .line 359
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1881

    const-string v0, "VNM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1881

    const-string v0, "704"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1776

    goto/16 :goto_1881

    :cond_1776
    const-string v0, "VG"

    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_187a

    const-string v0, "VGB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_187a

    const-string v0, "092"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1790

    goto/16 :goto_187a

    :cond_1790
    const-string v0, "VI"

    .line 361
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1873

    const-string v0, "VIR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1873

    const-string v0, "850"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17aa

    goto/16 :goto_1873

    :cond_17aa
    const-string v0, "WF"

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186c

    const-string v0, "WLF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186c

    const-string v0, "876"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c4

    goto/16 :goto_186c

    :cond_17c4
    const-string v0, "EH"

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1865

    const-string v0, "ESH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1865

    const-string v0, "732"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17de

    goto/16 :goto_1865

    :cond_17de
    const-string v0, "YE"

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_185e

    const-string v0, "YEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_185e

    const-string v0, "887"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f7

    goto :goto_185e

    :cond_17f7
    const-string v0, "YU"

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1857

    const-string v0, "YUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1857

    const-string v0, "891"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1810

    goto :goto_1857

    :cond_1810
    const-string v0, "ZM"

    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1850

    const-string v0, "ZMB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1850

    const-string v0, "894"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1829

    goto :goto_1850

    :cond_1829
    const-string v0, "ZW"

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1849

    const-string v0, "ZWE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1849

    const-string v0, "716"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1842

    goto :goto_1849

    :cond_1842
    const-string p1, "未知国家"

    .line 368
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1849
    :goto_1849
    const-string p1, "津巴布韦"

    .line 367
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1850
    :goto_1850
    const-string p1, "赞比亚"

    .line 366
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1857
    :goto_1857
    const-string p1, "南斯拉夫"

    .line 365
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_185e
    :goto_185e
    const-string p1, "也门"

    .line 364
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1865
    :goto_1865
    const-string p1, "西撒哈拉"

    .line 363
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_186c
    :goto_186c
    const-string p1, "瓦利斯和富图纳"

    .line 362
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1873
    :goto_1873
    const-string p1, "美属维尔京群岛"

    .line 361
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_187a
    :goto_187a
    const-string p1, "英属维尔京群岛"

    .line 360
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1881
    :goto_1881
    const-string p1, "越南"

    .line 359
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1888
    :goto_1888
    const-string p1, "委内瑞拉"

    .line 358
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_188f
    :goto_188f
    const-string p1, "梵蒂冈"

    .line 357
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1896
    :goto_1896
    const-string p1, "瓦努阿图"

    .line 356
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_189d
    :goto_189d
    const-string p1, "乌兹别克斯坦"

    .line 355
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18a4
    :goto_18a4
    const-string p1, "乌拉圭"

    .line 354
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18ab
    :goto_18ab
    const-string p1, "美国本土外小岛屿"

    .line 353
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18b2
    :goto_18b2
    const-string p1, "美国"

    .line 352
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18b9
    :goto_18b9
    const-string p1, "英国"

    .line 351
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18c0
    :goto_18c0
    const-string p1, "阿联酋"

    .line 350
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18c7
    :goto_18c7
    const-string p1, "乌克兰"

    .line 349
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18ce
    :goto_18ce
    const-string p1, "乌干达"

    .line 348
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18d5
    :goto_18d5
    const-string p1, "图瓦卢"

    .line 347
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18dc
    :goto_18dc
    const-string p1, "特克斯科斯群岛"

    .line 346
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18e3
    :goto_18e3
    const-string p1, "土库曼斯坦"

    .line 345
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18ea
    :goto_18ea
    const-string p1, "土耳其"

    .line 344
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18f1
    :goto_18f1
    const-string p1, "突尼斯"

    .line 343
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18f8
    :goto_18f8
    const-string p1, "特立尼达和多巴哥"

    .line 342
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_18ff
    :goto_18ff
    const-string p1, "汤加"

    .line 341
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1906
    :goto_1906
    const-string p1, "托克劳"

    .line 340
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_190d
    :goto_190d
    const-string p1, "多哥"

    .line 339
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1914
    :goto_1914
    const-string p1, "泰国"

    .line 338
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_191b
    :goto_191b
    const-string p1, "坦桑尼亚"

    .line 337
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1922
    :goto_1922
    const-string p1, "塔吉克斯坦"

    .line 336
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1929
    :goto_1929
    const-string p1, "叙利亚"

    .line 335
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1930
    :goto_1930
    const-string p1, "瑞士"

    .line 334
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1937
    :goto_1937
    const-string p1, "瑞典"

    .line 333
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_193e
    :goto_193e
    const-string p1, "斯威士兰"

    .line 332
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1945
    :goto_1945
    const-string p1, "斯瓦尔巴群岛"

    .line 331
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_194c
    :goto_194c
    const-string p1, "苏里南"

    .line 330
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1953
    :goto_1953
    const-string p1, "苏丹"

    .line 329
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_195a
    :goto_195a
    const-string p1, "斯里兰卡"

    .line 328
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1961
    :goto_1961
    const-string p1, "西班牙"

    .line 327
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1968
    :goto_1968
    const-string p1, "南乔治亚岛和南桑德韦奇岛"

    .line 326
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_196f
    :goto_196f
    const-string p1, "南非"

    .line 325
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1976
    :goto_1976
    const-string p1, "索马里"

    .line 324
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_197d
    :goto_197d
    const-string p1, "所罗门群岛"

    .line 323
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1984
    :goto_1984
    const-string p1, "斯洛文尼亚"

    .line 322
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_198b
    :goto_198b
    const-string p1, "斯洛伐克"

    .line 321
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1992
    :goto_1992
    const-string p1, "新加坡"

    .line 320
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1999
    :goto_1999
    const-string p1, "塞拉利昂"

    .line 319
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19a0
    :goto_19a0
    const-string p1, "塞舌尔"

    .line 318
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19a7
    :goto_19a7
    const-string p1, "塞内加尔"

    .line 317
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19ae
    :goto_19ae
    const-string p1, "沙特阿拉伯"

    .line 316
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19b5
    :goto_19b5
    const-string p1, "圣多美和普林西比"

    .line 315
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19bc
    :goto_19bc
    const-string p1, "圣马力诺"

    .line 314
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19c3
    :goto_19c3
    const-string p1, "萨摩亚"

    .line 313
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19ca
    :goto_19ca
    const-string p1, "圣文森特和格林纳丁斯"

    .line 312
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19d1
    :goto_19d1
    const-string p1, "圣皮埃尔和密克隆"

    .line 311
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19d8
    :goto_19d8
    const-string p1, "圣卢西亚"

    .line 310
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19df
    :goto_19df
    const-string p1, "圣基茨和尼维斯"

    .line 309
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19e6
    :goto_19e6
    const-string p1, "圣赫勒拿"

    .line 308
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19ed
    :goto_19ed
    const-string p1, "卢旺达"

    .line 307
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19f4
    :goto_19f4
    const-string p1, "俄罗斯联邦"

    .line 306
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_19fb
    :goto_19fb
    const-string p1, "罗马尼亚"

    .line 305
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a02
    :goto_1a02
    const-string p1, "留尼汪"

    .line 304
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a09
    :goto_1a09
    const-string p1, "卡塔尔"

    .line 303
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a10
    :goto_1a10
    const-string p1, "波多黎各"

    .line 302
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a17
    :goto_1a17
    const-string p1, "葡萄牙"

    .line 301
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a1e
    :goto_1a1e
    const-string p1, "波兰"

    .line 300
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a25
    :goto_1a25
    const-string p1, "皮特凯恩群岛"

    .line 299
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a2c
    :goto_1a2c
    const-string p1, "菲律宾"

    .line 298
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a33
    :goto_1a33
    const-string p1, "秘鲁"

    .line 297
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a3a
    :goto_1a3a
    const-string p1, "巴拉圭"

    .line 296
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a41
    :goto_1a41
    const-string p1, "巴布亚新几内亚"

    .line 295
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a48
    :goto_1a48
    const-string p1, "巴拿马"

    .line 294
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a4f
    :goto_1a4f
    const-string p1, "巴勒斯坦"

    .line 293
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a56
    :goto_1a56
    const-string p1, "帕劳"

    .line 292
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a5d
    :goto_1a5d
    const-string p1, "巴基斯坦"

    .line 291
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a64
    :goto_1a64
    const-string p1, "阿曼"

    .line 290
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a6b
    :goto_1a6b
    const-string p1, "挪威"

    .line 289
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a72
    :goto_1a72
    const-string p1, "北马里亚纳"

    .line 288
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a79
    :goto_1a79
    const-string p1, "诺福克岛"

    .line 287
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a80
    :goto_1a80
    const-string p1, "纽埃"

    .line 286
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a87
    :goto_1a87
    const-string p1, "尼日利亚"

    .line 285
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a8e
    :goto_1a8e
    const-string p1, "尼日尔"

    .line 284
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a95
    :goto_1a95
    const-string p1, "尼加拉瓜"

    .line 283
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1a9c
    :goto_1a9c
    const-string p1, "新西兰"

    .line 282
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1aa3
    :goto_1aa3
    const-string p1, "新喀里多尼亚"

    .line 281
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1aaa
    :goto_1aaa
    const-string p1, "荷属安的列斯"

    .line 280
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ab1
    :goto_1ab1
    const-string p1, "荷兰"

    .line 279
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ab8
    :goto_1ab8
    const-string p1, "尼泊尔"

    .line 278
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1abf
    :goto_1abf
    const-string p1, "瑙鲁"

    .line 277
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ac6
    :goto_1ac6
    const-string p1, "纳米比亚"

    .line 276
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1acd
    :goto_1acd
    const-string p1, "缅甸"

    .line 275
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ad4
    :goto_1ad4
    const-string p1, "莫桑比克"

    .line 274
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1adb
    :goto_1adb
    const-string p1, "摩洛哥"

    .line 273
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ae2
    :goto_1ae2
    const-string p1, "蒙特塞拉特"

    .line 272
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ae9
    :goto_1ae9
    const-string p1, "蒙古"

    .line 271
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1af0
    :goto_1af0
    const-string p1, "摩纳哥"

    .line 270
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1af7
    :goto_1af7
    const-string p1, "摩尔多瓦"

    .line 269
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1afe
    :goto_1afe
    const-string p1, "密克罗尼西亚联邦"

    .line 268
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b05
    :goto_1b05
    const-string p1, "墨西哥"

    .line 267
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b0c
    :goto_1b0c
    const-string p1, "马约特"

    .line 266
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b13
    :goto_1b13
    const-string p1, "毛里求斯"

    .line 265
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b1a
    :goto_1b1a
    const-string p1, "毛里塔尼亚"

    .line 264
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b21
    :goto_1b21
    const-string p1, "马提尼克"

    .line 263
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b28
    :goto_1b28
    const-string p1, "马绍尔群岛"

    .line 262
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b2f
    :goto_1b2f
    const-string p1, "马耳他"

    .line 261
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b36
    :goto_1b36
    const-string p1, "马里"

    .line 260
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b3d
    :goto_1b3d
    const-string p1, "马尔代夫"

    .line 259
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b44
    :goto_1b44
    const-string p1, "马来西亚"

    .line 258
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b4b
    :goto_1b4b
    const-string p1, "马拉维"

    .line 257
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b52
    :goto_1b52
    const-string p1, "马达加斯加"

    .line 256
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b59
    :goto_1b59
    const-string p1, "前南马其顿"

    .line 255
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b60
    :goto_1b60
    const-string p1, "卢森堡"

    .line 254
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b67
    :goto_1b67
    const-string p1, "立陶宛"

    .line 253
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b6e
    :goto_1b6e
    const-string p1, "列支敦士登"

    .line 252
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b75
    :goto_1b75
    const-string p1, "利比亚"

    .line 251
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b7c
    :goto_1b7c
    const-string p1, "利比里亚"

    .line 250
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b83
    :goto_1b83
    const-string p1, "莱索托"

    .line 249
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b8a
    :goto_1b8a
    const-string p1, "黎巴嫩"

    .line 248
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b91
    :goto_1b91
    const-string p1, "拉脱维亚"

    .line 247
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b98
    :goto_1b98
    const-string p1, "老挝"

    .line 246
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1b9f
    :goto_1b9f
    const-string p1, "吉尔吉斯斯坦"

    .line 245
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ba6
    :goto_1ba6
    const-string p1, "科威特"

    .line 244
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bad
    :goto_1bad
    const-string p1, "韩国"

    .line 243
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bb4
    :goto_1bb4
    const-string p1, "朝鲜"

    .line 242
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bbb
    :goto_1bbb
    const-string p1, "基里巴斯"

    .line 241
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bc2
    :goto_1bc2
    const-string p1, "肯尼亚"

    .line 240
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bc9
    :goto_1bc9
    const-string p1, "哈萨克斯坦"

    .line 239
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bd0
    :goto_1bd0
    const-string p1, "约旦"

    .line 238
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bd7
    :goto_1bd7
    const-string p1, "日本"

    .line 237
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bde
    :goto_1bde
    const-string p1, "牙买加"

    .line 236
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1be5
    :goto_1be5
    const-string p1, "意大利"

    .line 235
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bec
    :goto_1bec
    const-string p1, "以色列"

    .line 234
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bf3
    :goto_1bf3
    const-string p1, "爱尔兰"

    .line 233
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1bfa
    :goto_1bfa
    const-string p1, "伊拉克"

    .line 232
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c01
    :goto_1c01
    const-string p1, "伊朗"

    .line 231
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c08
    :goto_1c08
    const-string p1, "印度尼西亚"

    .line 230
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c0f
    :goto_1c0f
    const-string p1, "印度"

    .line 229
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c16
    :goto_1c16
    const-string p1, "冰岛"

    .line 228
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c1d
    :goto_1c1d
    const-string p1, "匈牙利"

    .line 227
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c24
    :goto_1c24
    const-string p1, "洪都拉斯"

    .line 226
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c2b
    :goto_1c2b
    const-string p1, "赫德岛和麦克唐纳岛"

    .line 225
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c32
    :goto_1c32
    const-string p1, "海地"

    .line 224
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c39
    :goto_1c39
    const-string p1, "圭亚那"

    .line 223
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c40
    :goto_1c40
    const-string p1, "几内亚比绍"

    .line 222
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c47
    :goto_1c47
    const-string p1, "几内亚"

    .line 221
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c4e
    :goto_1c4e
    const-string p1, "危地马拉"

    .line 220
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c55
    :goto_1c55
    const-string p1, "关岛"

    .line 219
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c5c
    :goto_1c5c
    const-string p1, "瓜德罗普"

    .line 218
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c63
    :goto_1c63
    const-string p1, "格林纳达"

    .line 217
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c6a
    :goto_1c6a
    const-string p1, "格陵兰"

    .line 216
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c71
    :goto_1c71
    const-string p1, "希腊"

    .line 215
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c78
    :goto_1c78
    const-string p1, "直布罗陀"

    .line 214
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c7f
    :goto_1c7f
    const-string p1, "加纳"

    .line 213
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c86
    :goto_1c86
    const-string p1, "德国"

    .line 212
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c8d
    :goto_1c8d
    const-string p1, "格鲁吉亚"

    .line 211
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c94
    :goto_1c94
    const-string p1, "冈比亚Gambia"

    .line 210
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1c9b
    :goto_1c9b
    const-string p1, "加蓬"

    .line 209
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ca2
    :goto_1ca2
    const-string p1, "法属南部领土"

    .line 208
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ca9
    :goto_1ca9
    const-string p1, "法属波利尼西亚"

    .line 207
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cb0
    :goto_1cb0
    const-string p1, "法属圭亚那"

    .line 206
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cb7
    :goto_1cb7
    const-string p1, "法国"

    .line 205
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cbe
    :goto_1cbe
    const-string p1, "芬兰"

    .line 204
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cc5
    :goto_1cc5
    const-string p1, "斐济"

    .line 203
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ccc
    :goto_1ccc
    const-string p1, "法罗群岛"

    .line 202
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cd3
    :goto_1cd3
    const-string p1, "福克兰群岛(马尔维纳斯)"

    .line 201
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cda
    :goto_1cda
    const-string p1, "埃塞俄比亚"

    .line 200
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ce1
    :goto_1ce1
    const-string p1, "爱沙尼亚"

    .line 199
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ce8
    :goto_1ce8
    const-string p1, "厄立特里亚"

    .line 198
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cef
    :goto_1cef
    const-string p1, "赤道几内亚"

    .line 197
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cf6
    :goto_1cf6
    const-string p1, "萨尔瓦多"

    .line 196
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1cfd
    :goto_1cfd
    const-string p1, "埃及"

    .line 195
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d04
    :goto_1d04
    const-string p1, "厄瓜多尔"

    .line 194
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d0b
    :goto_1d0b
    const-string p1, "东帝汶"

    .line 193
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d12
    :goto_1d12
    const-string p1, "多米尼加共和国"

    .line 192
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d19
    :goto_1d19
    const-string p1, "多米尼克"

    .line 191
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d20
    :goto_1d20
    const-string p1, "吉布提"

    .line 190
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d27
    :goto_1d27
    const-string p1, "丹麦"

    .line 189
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d2e
    :goto_1d2e
    const-string p1, "捷克"

    .line 188
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d35
    :goto_1d35
    const-string p1, "塞浦路斯"

    .line 187
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d3c
    :goto_1d3c
    const-string p1, "古巴"

    .line 186
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d43
    :goto_1d43
    const-string p1, "克罗地亚"

    .line 185
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d4a
    :goto_1d4a
    const-string p1, "科特迪瓦"

    .line 184
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d51
    :goto_1d51
    const-string p1, "哥斯达黎加"

    .line 183
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d58
    :goto_1d58
    const-string p1, "库克群岛"

    .line 182
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d5f
    :goto_1d5f
    const-string p1, "刚果（金）"

    .line 181
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d66
    :goto_1d66
    const-string p1, "刚果（布）"

    .line 180
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d6d
    :goto_1d6d
    const-string p1, "科摩罗"

    .line 179
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d74
    :goto_1d74
    const-string p1, "哥伦比亚"

    .line 178
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d7b
    :goto_1d7b
    const-string p1, "科科斯(基林)群岛"

    .line 177
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d82
    :goto_1d82
    const-string p1, "圣诞岛"

    .line 176
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d89
    :goto_1d89
    const-string p1, "台湾"

    .line 175
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d90
    :goto_1d90
    const-string p1, "澳门"

    .line 174
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d97
    :goto_1d97
    const-string p1, "香港"

    .line 173
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1d9e
    :goto_1d9e
    const-string p1, "中国"

    .line 172
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1da5
    :goto_1da5
    const-string p1, "智利"

    .line 171
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1dac
    :goto_1dac
    const-string p1, "乍得"

    .line 170
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1db3
    :goto_1db3
    const-string p1, "中非"

    .line 169
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1dba
    :goto_1dba
    const-string p1, "开曼群岛"

    .line 168
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1dc1
    :goto_1dc1
    const-string p1, "佛得角"

    .line 167
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1dc8
    :goto_1dc8
    const-string p1, "加拿大"

    .line 166
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1dcf
    :goto_1dcf
    const-string p1, "喀麦隆"

    .line 165
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1dd6
    :goto_1dd6
    const-string p1, "柬埔寨"

    .line 164
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1ddd
    :goto_1ddd
    const-string p1, "布隆迪"

    .line 163
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1de4
    :goto_1de4
    const-string p1, "布基纳法索"

    .line 162
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1deb
    :goto_1deb
    const-string p1, "保加利亚"

    .line 161
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1df2
    :goto_1df2
    const-string p1, "文莱"

    .line 160
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1df9
    :goto_1df9
    const-string p1, "英属印度洋领土"

    .line 159
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e00
    :goto_1e00
    const-string p1, "巴西"

    .line 158
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e07
    :goto_1e07
    const-string p1, "布维岛"

    .line 157
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e0e
    :goto_1e0e
    const-string p1, "博茨瓦纳"

    .line 156
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e15
    :goto_1e15
    const-string p1, "波黑"

    .line 155
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e1c
    :goto_1e1c
    const-string p1, "玻利维亚"

    .line 154
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e23
    :goto_1e23
    const-string p1, "不丹"

    .line 153
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e2a
    :goto_1e2a
    const-string p1, "百慕大"

    .line 152
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e31
    :goto_1e31
    const-string p1, "贝宁"

    .line 151
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e38
    :goto_1e38
    const-string p1, "伯利兹"

    .line 150
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e3f
    :goto_1e3f
    const-string p1, "比利时"

    .line 149
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e46
    :goto_1e46
    const-string p1, "白俄罗斯"

    .line 148
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e4d
    :goto_1e4d
    const-string p1, "巴巴多斯"

    .line 147
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e54
    :goto_1e54
    const-string p1, "孟加拉国"

    .line 146
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e5b
    :goto_1e5b
    const-string p1, "巴林"

    .line 145
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1ec1

    :cond_1e62
    :goto_1e62
    const-string p1, "巴哈马"

    .line 144
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e68
    :goto_1e68
    const-string p1, "阿塞拜疆"

    .line 143
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e6e
    :goto_1e6e
    const-string p1, "奥地利"

    .line 142
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e74
    :goto_1e74
    const-string p1, "澳大利亚"

    .line 141
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e7a
    :goto_1e7a
    const-string p1, "阿鲁巴"

    .line 140
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e80
    :goto_1e80
    const-string p1, "亚美尼亚"

    .line 139
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e86
    :goto_1e86
    const-string p1, "阿根廷"

    .line 138
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e8c
    :goto_1e8c
    const-string p1, "安提瓜和巴布达"

    .line 137
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e92
    :goto_1e92
    const-string p1, "南极洲"

    .line 136
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e98
    :goto_1e98
    const-string p1, "安圭拉"

    .line 135
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1e9e
    :goto_1e9e
    const-string p1, "安哥拉"

    .line 134
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1ea4
    :goto_1ea4
    const-string p1, "安道尔"

    .line 133
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1eaa
    :goto_1eaa
    const-string p1, "美属萨摩亚"

    .line 132
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1eb0
    :goto_1eb0
    const-string p1, "阿尔及利亚"

    .line 131
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1eb6
    :goto_1eb6
    const-string p1, "阿尔巴尼亚"

    .line 130
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_1ec1

    :cond_1ebc
    :goto_1ebc
    const-string p1, "阿富汗"

    .line 129
    invoke-direct {p0, p1}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->setCountry(Ljava/lang/String;)V

    :goto_1ec1
    return-void
.end method

.method private setDeptCode(Ljava/lang/String;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->deptCode:Ljava/lang/String;

    return-void
.end method

.method private setEnName(Ljava/lang/String;)V
    .registers 7

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 62
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    .line 65
    aget-byte v4, v0, v3

    if-nez v4, :cond_f

    move v1, v3

    goto :goto_12

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    :goto_12
    if-lez v1, :cond_1f

    .line 71
    array-length v3, v0

    if-ge v1, v3, :cond_1f

    .line 73
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->enName:Ljava/lang/String;

    goto :goto_25

    .line 77
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->enName:Ljava/lang/String;

    :goto_25
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .registers 7

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 97
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    .line 100
    aget-byte v4, v0, v3

    if-nez v4, :cond_f

    move v1, v3

    goto :goto_12

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    :goto_12
    if-lez v1, :cond_1f

    .line 106
    array-length v3, v0

    if-ge v1, v3, :cond_1f

    .line 108
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->id:Ljava/lang/String;

    goto :goto_25

    .line 112
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->id:Ljava/lang/String;

    :goto_25
    return-void
.end method

.method private setLicType(Ljava/lang/String;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->licType:Ljava/lang/String;

    return-void
.end method

.method private setLicVer(Ljava/lang/String;)V
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->licVer:Ljava/lang/String;

    return-void
.end method

.method private setSex(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->sex:Ljava/lang/String;

    return-void
.end method

.method private setValidityTime(Ljava/lang/String;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->validityTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBirth()Ljava/lang/String;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->birth:Ljava/lang/String;

    return-object v0
.end method

.method public getCnName()Ljava/lang/String;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->cnName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptCode()Ljava/lang/String;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->deptCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEnName()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->enName:Ljava/lang/String;

    return-object v0
.end method

.method public getFpdata()[B
    .registers 2

    .line 542
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fpdata:[B

    return-object v0
.end method

.method public getFplength()I
    .registers 2

    .line 516
    iget v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLicType()Ljava/lang/String;
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->licType:Ljava/lang/String;

    return-object v0
.end method

.method public getLicVer()Ljava/lang/String;
    .registers 2

    .line 421
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->licVer:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()[B
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photo:[B

    return-object v0
.end method

.method public getPhotolength()I
    .registers 2

    .line 507
    iget v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    return v0
.end method

.method public getSex()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getValidityTime()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->validityTime:Ljava/lang/String;

    return-object v0
.end method

.method public unPacket([BI)V
    .registers 8

    const/4 v0, 0x0

    .line 547
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    .line 548
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    .line 549
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    const/4 v1, 0x4

    if-ge p2, v1, :cond_b

    return-void

    .line 554
    :cond_b
    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    .line 555
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    const/4 v2, 0x2

    .line 556
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    .line 557
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    .line 558
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    iget v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_39

    .line 560
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    .line 561
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    return-void

    .line 564
    :cond_39
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    if-lez p2, :cond_54

    .line 566
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->content:[B

    .line 567
    iget-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->content:[B

    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    :try_start_4a
    iget-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->content:[B

    invoke-direct {p0, p2}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->decodeIdCardBaseInfo([B)V
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p2

    .line 571
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 574
    :cond_54
    :goto_54
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    if-lez p2, :cond_68

    .line 576
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photo:[B

    .line 577
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photo:[B

    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_68
    return-void
.end method

.method public unPacketExt([BI)V
    .registers 8

    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    .line 641
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    .line 642
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    const/4 v1, 0x6

    if-ge p2, v1, :cond_b

    return-void

    .line 647
    :cond_b
    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    .line 648
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    const/4 v2, 0x2

    .line 649
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    .line 650
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    const/4 v2, 0x4

    .line 651
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    .line 652
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    .line 653
    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    iget v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_4e

    .line 655
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    .line 656
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    .line 657
    iput v0, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    return-void

    .line 660
    :cond_4e
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    if-lez p2, :cond_69

    .line 662
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->content:[B

    .line 663
    iget-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->content:[B

    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    :try_start_5f
    iget-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->content:[B

    invoke-direct {p0, p2}, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->decodeIdCardBaseInfo([B)V
    :try_end_64
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5f .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p2

    .line 667
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 670
    :cond_69
    :goto_69
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    if-lez p2, :cond_7d

    .line 672
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photo:[B

    .line 673
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    add-int/2addr p2, v1

    iget-object v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photo:[B

    iget v3, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    :cond_7d
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    if-lez p2, :cond_94

    .line 677
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fpdata:[B

    .line 678
    iget p2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->contentLength:I

    add-int/2addr p2, v1

    iget v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->photolength:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fpdata:[B

    iget v2, p0, Lcom/zkteco/android/biometric/module/idcard/meta/IDPRPCardInfo;->fplength:I

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_94
    return-void
.end method
