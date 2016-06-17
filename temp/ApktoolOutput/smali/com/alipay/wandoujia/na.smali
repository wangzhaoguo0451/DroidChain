.class public final enum Lcom/alipay/wandoujia/na;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/wandoujia/na;

.field public static final enum b:Lcom/alipay/wandoujia/na;

.field private static final synthetic c:[Lcom/alipay/wandoujia/na;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/alipay/wandoujia/na;

    const-string v1, "Sentence"

    invoke-direct {v0, v1, v2}, Lcom/alipay/wandoujia/na;-><init>(Ljava/lang/String;I)V

    .line 16
    sput-object v0, Lcom/alipay/wandoujia/na;->a:Lcom/alipay/wandoujia/na;

    .line 18
    new-instance v0, Lcom/alipay/wandoujia/na;

    const-string v1, "Function"

    invoke-direct {v0, v1, v3}, Lcom/alipay/wandoujia/na;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/alipay/wandoujia/na;->b:Lcom/alipay/wandoujia/na;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/wandoujia/na;

    sget-object v1, Lcom/alipay/wandoujia/na;->a:Lcom/alipay/wandoujia/na;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/wandoujia/na;->b:Lcom/alipay/wandoujia/na;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/wandoujia/na;->c:[Lcom/alipay/wandoujia/na;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/wandoujia/na;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/wandoujia/na;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/na;

    return-object v0
.end method

.method public static values()[Lcom/alipay/wandoujia/na;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/wandoujia/na;->c:[Lcom/alipay/wandoujia/na;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/wandoujia/na;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
