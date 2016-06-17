.class public final Lcof;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# static fields
.field private static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 65
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    .line 126
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcof;->a:[Z

    .line 139
    return-void

    .line 126
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x31

    const/4 v4, 0x0

    const/16 v9, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    if-nez p0, :cond_1

    move-object v0, v4

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v6, v3

    move v0, v3

    move v1, v3

    :goto_1
    if-ge v6, v7, :cond_2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    packed-switch v1, :pswitch_data_0

    .line 151
    :cond_2
    :goto_2
    if-nez v4, :cond_12

    move v0, v3

    .line 154
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v9, :cond_13

    const/16 v5, 0x39

    if-gt v1, v5, :cond_13

    move v1, v2

    :goto_5
    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 149
    :pswitch_0
    const/16 v5, 0x2b

    if-ne v8, v5, :cond_5

    move v1, v2

    :cond_4
    :goto_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    :cond_5
    if-ne v8, v9, :cond_6

    const/4 v1, 0x2

    goto :goto_6

    :cond_6
    if-eq v8, v10, :cond_2

    invoke-static {v8}, Lcof;->a(C)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :pswitch_1
    if-ne v8, v9, :cond_7

    const/4 v1, 0x3

    goto :goto_6

    :cond_7
    if-ne v8, v10, :cond_8

    const/4 v1, 0x4

    goto :goto_6

    :cond_8
    invoke-static {v8}, Lcof;->a(C)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :pswitch_2
    if-ne v8, v10, :cond_9

    const/4 v1, 0x5

    goto :goto_6

    :cond_9
    invoke-static {v8}, Lcof;->a(C)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :pswitch_3
    if-gt v9, v8, :cond_b

    const/16 v5, 0x39

    if-gt v8, v5, :cond_b

    add-int/lit8 v5, v8, -0x30

    :goto_7
    if-lez v5, :cond_10

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v5

    const/16 v5, 0x64

    if-ge v0, v5, :cond_a

    if-lez v0, :cond_c

    const/16 v5, 0x64

    if-ge v0, v5, :cond_c

    sget-object v5, Lcof;->a:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_c

    move v5, v2

    :goto_8
    if-eqz v5, :cond_d

    :cond_a
    new-instance v4, Lcog;

    add-int/lit8 v0, v6, 0x1

    invoke-direct {v4, v0}, Lcog;-><init>(I)V

    goto :goto_2

    :cond_b
    const/4 v5, -0x1

    goto :goto_7

    :cond_c
    move v5, v3

    goto :goto_8

    :cond_d
    if-eq v1, v2, :cond_e

    const/4 v5, 0x3

    if-eq v1, v5, :cond_e

    const/4 v5, 0x5

    if-ne v1, v5, :cond_f

    :cond_e
    const/4 v1, 0x6

    goto :goto_6

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    invoke-static {v8}, Lcof;->a(C)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_6

    :pswitch_4
    const/16 v5, 0x36

    if-ne v8, v5, :cond_11

    const/16 v1, 0x9

    goto :goto_6

    :cond_11
    invoke-static {v8}, Lcof;->a(C)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_2

    :pswitch_5
    const/16 v0, 0x36

    if-ne v8, v0, :cond_2

    new-instance v4, Lcog;

    add-int/lit8 v0, v6, 0x1

    invoke-direct {v4, v0}, Lcog;-><init>(I)V

    goto/16 :goto_2

    .line 151
    :cond_12
    iget v0, v4, Lcog;->a:I

    goto/16 :goto_3

    :cond_13
    move v1, v3

    .line 156
    goto/16 :goto_5

    .line 162
    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 268
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
