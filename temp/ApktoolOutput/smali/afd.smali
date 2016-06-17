.class public final Lafd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lafd;->a:I

    return-void
.end method

.method public static a(Lcom/alipay/wandoujia/sf;)Lcom/alipay/wandoujia/sh;
    .locals 3
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    invoke-static {}, Lafd;->a()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    new-instance v0, Laed;

    invoke-direct {v0}, Laed;-><init>()V

    goto :goto_0

    .line 49
    :pswitch_1
    new-instance v0, Laek;

    invoke-direct {v0}, Laek;-><init>()V

    goto :goto_0

    .line 52
    :pswitch_2
    new-instance v0, Lafs;

    invoke-direct {v0}, Lafs;-><init>()V

    goto :goto_0

    .line 55
    :pswitch_3
    new-instance v0, Laev;

    invoke-direct {v0}, Laev;-><init>()V

    goto :goto_0

    .line 58
    :pswitch_4
    new-instance v0, Laei;

    invoke-direct {v0}, Laei;-><init>()V

    goto :goto_0

    .line 61
    :pswitch_5
    new-instance v0, Laep;

    invoke-direct {v0}, Laep;-><init>()V

    goto :goto_0

    .line 64
    :pswitch_6
    new-instance v0, Lafl;

    invoke-direct {v0}, Lafl;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_7
    new-instance v0, Laej;

    invoke-direct {v0}, Laej;-><init>()V

    goto :goto_0

    .line 70
    :pswitch_8
    new-instance v0, Laet;

    invoke-direct {v0}, Laet;-><init>()V

    goto :goto_0

    .line 73
    :pswitch_9
    new-instance v0, Laeg;

    invoke-direct {v0}, Laeg;-><init>()V

    goto :goto_0

    .line 76
    :pswitch_a
    new-instance v0, Lafn;

    invoke-direct {v0}, Lafn;-><init>()V

    goto :goto_0

    .line 80
    :pswitch_b
    new-instance v0, Lafp;

    invoke-direct {v0}, Lafp;-><init>()V

    goto :goto_0

    .line 83
    :pswitch_c
    new-instance v0, Lafg;

    invoke-direct {v0}, Lafg;-><init>()V

    goto :goto_0

    .line 86
    :pswitch_d
    new-instance v0, Laeu;

    invoke-direct {v0}, Laeu;-><init>()V

    goto :goto_0

    .line 89
    :pswitch_e
    new-instance v0, Lafo;

    invoke-direct {v0}, Lafo;-><init>()V

    goto :goto_0

    .line 92
    :pswitch_f
    new-instance v0, Laey;

    invoke-direct {v0}, Laey;-><init>()V

    goto :goto_0

    .line 95
    :pswitch_10
    new-instance v0, Laee;

    invoke-direct {v0}, Laee;-><init>()V

    goto :goto_0

    .line 98
    :pswitch_11
    new-instance v0, Lafe;

    invoke-direct {v0}, Lafe;-><init>()V

    goto :goto_0

    .line 101
    :pswitch_12
    new-instance v0, Laew;

    invoke-direct {v0}, Laew;-><init>()V

    goto :goto_0

    .line 104
    :pswitch_13
    new-instance v0, Lael;

    invoke-direct {v0}, Lael;-><init>()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alipay/wandoujia/sh;
    .locals 3
    .parameter

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/alipay/wandoujia/sf;->a(Ljava/lang/String;)Lcom/alipay/wandoujia/sf;

    move-result-object v0

    .line 29
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    sget-object v2, Lcom/alipay/wandoujia/sf;->u:Lcom/alipay/wandoujia/sf;

    if-ne v0, v2, :cond_1

    .line 31
    const-string v2, "title"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    sget-object v0, Lcom/alipay/wandoujia/sf;->t:Lcom/alipay/wandoujia/sf;

    .line 35
    :cond_1
    invoke-static {v0}, Lafd;->a(Lcom/alipay/wandoujia/sf;)Lcom/alipay/wandoujia/sh;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 118
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 119
    sget v0, Lafd;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 120
    sget v0, Lafd;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lafd;->a:I

    goto :goto_0
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lafd;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/wandoujia/sf;->values()[Lcom/alipay/wandoujia/sf;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/wandoujia/sf;->u:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/wandoujia/sf;->n:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/wandoujia/sf;->g:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/wandoujia/sf;->k:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/wandoujia/sf;->p:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/wandoujia/sf;->l:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/wandoujia/sf;->m:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/wandoujia/sf;->c:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/wandoujia/sf;->a:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alipay/wandoujia/sf;->r:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_a
    :try_start_a
    sget-object v1, Lcom/alipay/wandoujia/sf;->j:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_b
    :try_start_b
    sget-object v1, Lcom/alipay/wandoujia/sf;->e:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_c
    :try_start_c
    sget-object v1, Lcom/alipay/wandoujia/sf;->h:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_d
    :try_start_d
    sget-object v1, Lcom/alipay/wandoujia/sf;->b:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_e
    :try_start_e
    sget-object v1, Lcom/alipay/wandoujia/sf;->o:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_f
    :try_start_f
    sget-object v1, Lcom/alipay/wandoujia/sf;->s:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_10
    :try_start_10
    sget-object v1, Lcom/alipay/wandoujia/sf;->f:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_11
    :try_start_11
    sget-object v1, Lcom/alipay/wandoujia/sf;->i:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_12
    :try_start_12
    sget-object v1, Lcom/alipay/wandoujia/sf;->d:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_13
    :try_start_13
    sget-object v1, Lcom/alipay/wandoujia/sf;->t:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_14
    :try_start_14
    sget-object v1, Lcom/alipay/wandoujia/sf;->q:Lcom/alipay/wandoujia/sf;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/sf;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_15
    sput-object v0, Lafd;->b:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_15

    :catch_1
    move-exception v1

    goto :goto_14

    :catch_2
    move-exception v1

    goto :goto_13

    :catch_3
    move-exception v1

    goto :goto_12

    :catch_4
    move-exception v1

    goto :goto_11

    :catch_5
    move-exception v1

    goto :goto_10

    :catch_6
    move-exception v1

    goto :goto_f

    :catch_7
    move-exception v1

    goto :goto_e

    :catch_8
    move-exception v1

    goto :goto_d

    :catch_9
    move-exception v1

    goto :goto_c

    :catch_a
    move-exception v1

    goto :goto_b

    :catch_b
    move-exception v1

    goto/16 :goto_a

    :catch_c
    move-exception v1

    goto/16 :goto_9

    :catch_d
    move-exception v1

    goto/16 :goto_8

    :catch_e
    move-exception v1

    goto/16 :goto_7

    :catch_f
    move-exception v1

    goto/16 :goto_6

    :catch_10
    move-exception v1

    goto/16 :goto_5

    :catch_11
    move-exception v1

    goto/16 :goto_4

    :catch_12
    move-exception v1

    goto/16 :goto_3

    :catch_13
    move-exception v1

    goto/16 :goto_2

    :catch_14
    move-exception v1

    goto/16 :goto_1
.end method
