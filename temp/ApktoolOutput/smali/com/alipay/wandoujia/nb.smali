.class public final enum Lcom/alipay/wandoujia/nb;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/wandoujia/nb;

.field private static final synthetic c:[Lcom/alipay/wandoujia/nb;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/alipay/wandoujia/nb;

    const-string v1, "Lua"

    const-string v2, "lua"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/wandoujia/nb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/nb;->a:Lcom/alipay/wandoujia/nb;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/wandoujia/nb;

    sget-object v1, Lcom/alipay/wandoujia/nb;->a:Lcom/alipay/wandoujia/nb;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/wandoujia/nb;->c:[Lcom/alipay/wandoujia/nb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/alipay/wandoujia/nb;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/wandoujia/nb;
    .locals 5
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/wandoujia/nb;->values()[Lcom/alipay/wandoujia/nb;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 34
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 29
    :cond_1
    aget-object v0, v2, v1

    .line 30
    invoke-virtual {v0}, Lcom/alipay/wandoujia/nb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/wandoujia/nb;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/wandoujia/nb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/nb;

    return-object v0
.end method

.method public static values()[Lcom/alipay/wandoujia/nb;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/wandoujia/nb;->c:[Lcom/alipay/wandoujia/nb;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/wandoujia/nb;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/wandoujia/nb;->b:Ljava/lang/String;

    return-object v0
.end method
