.class public final enum Lcom/alipay/wandoujia/qb;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/wandoujia/qb;

.field public static final enum b:Lcom/alipay/wandoujia/qb;

.field public static final enum c:Lcom/alipay/wandoujia/qb;

.field public static final enum d:Lcom/alipay/wandoujia/qb;

.field public static final enum e:Lcom/alipay/wandoujia/qb;

.field public static final enum f:Lcom/alipay/wandoujia/qb;

.field public static final enum g:Lcom/alipay/wandoujia/qb;

.field public static final enum h:Lcom/alipay/wandoujia/qb;

.field public static final enum i:Lcom/alipay/wandoujia/qb;

.field public static final enum j:Lcom/alipay/wandoujia/qb;

.field private static final synthetic l:[Lcom/alipay/wandoujia/qb;


# instance fields
.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "SUCCESS"

    .line 15
    const-string v2, "0"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->a:Lcom/alipay/wandoujia/qb;

    .line 17
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "FORCE_EXIT"

    .line 18
    const-string v2, "force_exit"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->b:Lcom/alipay/wandoujia/qb;

    .line 20
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "INITIAL_INVALID"

    .line 21
    const-string v2, "initial_invalid"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->c:Lcom/alipay/wandoujia/qb;

    .line 23
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "TID_REFRESH"

    .line 24
    const-string v2, "tid_refresh_invalid"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->d:Lcom/alipay/wandoujia/qb;

    .line 26
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "PAYMENT_RESULT"

    .line 27
    const-string v2, "payment_result"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->e:Lcom/alipay/wandoujia/qb;

    .line 29
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "QUERY_RESULT"

    const/4 v2, 0x5

    .line 30
    const-string v3, "query_result"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->f:Lcom/alipay/wandoujia/qb;

    .line 32
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "MIX_OLDCARD_PAY_ILLEGAL"

    const/4 v2, 0x6

    .line 33
    const-string v3, "mix_oldcard_pay_illegal"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->g:Lcom/alipay/wandoujia/qb;

    .line 35
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "POP_TYPE"

    const/4 v2, 0x7

    .line 36
    const-string v3, "pop_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->h:Lcom/alipay/wandoujia/qb;

    .line 38
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "NOT_POP_TYPE"

    const/16 v2, 0x8

    .line 39
    const-string v3, "not_pop_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->i:Lcom/alipay/wandoujia/qb;

    .line 41
    new-instance v0, Lcom/alipay/wandoujia/qb;

    const-string v1, "CLIENT_CONFIRM"

    const/16 v2, 0x9

    .line 42
    const-string v3, "client_confirm"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/qb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/qb;->j:Lcom/alipay/wandoujia/qb;

    .line 12
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alipay/wandoujia/qb;

    sget-object v1, Lcom/alipay/wandoujia/qb;->a:Lcom/alipay/wandoujia/qb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/wandoujia/qb;->b:Lcom/alipay/wandoujia/qb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/wandoujia/qb;->c:Lcom/alipay/wandoujia/qb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/wandoujia/qb;->d:Lcom/alipay/wandoujia/qb;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/wandoujia/qb;->e:Lcom/alipay/wandoujia/qb;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/wandoujia/qb;->f:Lcom/alipay/wandoujia/qb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/wandoujia/qb;->g:Lcom/alipay/wandoujia/qb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/wandoujia/qb;->h:Lcom/alipay/wandoujia/qb;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/wandoujia/qb;->i:Lcom/alipay/wandoujia/qb;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/wandoujia/qb;->j:Lcom/alipay/wandoujia/qb;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/wandoujia/qb;->l:[Lcom/alipay/wandoujia/qb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/alipay/wandoujia/qb;->k:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/wandoujia/qb;
    .locals 6
    .parameter

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {}, Lcom/alipay/wandoujia/qb;->values()[Lcom/alipay/wandoujia/qb;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 62
    return-object v1

    .line 56
    :cond_0
    aget-object v0, v3, v2

    .line 57
    invoke-virtual {v0}, Lcom/alipay/wandoujia/qb;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/wandoujia/qb;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/wandoujia/qb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/qb;

    return-object v0
.end method

.method public static values()[Lcom/alipay/wandoujia/qb;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/wandoujia/qb;->l:[Lcom/alipay/wandoujia/qb;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/wandoujia/qb;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/wandoujia/qb;->k:Ljava/lang/String;

    return-object v0
.end method
