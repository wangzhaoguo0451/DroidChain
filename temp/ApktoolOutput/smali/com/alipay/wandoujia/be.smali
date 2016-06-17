.class public final enum Lcom/alipay/wandoujia/be;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/wandoujia/be;

.field public static final enum b:Lcom/alipay/wandoujia/be;

.field public static final enum c:Lcom/alipay/wandoujia/be;

.field public static final enum d:Lcom/alipay/wandoujia/be;

.field public static final enum e:Lcom/alipay/wandoujia/be;

.field public static final enum f:Lcom/alipay/wandoujia/be;

.field public static final enum g:Lcom/alipay/wandoujia/be;

.field private static final synthetic h:[Lcom/alipay/wandoujia/be;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/alipay/wandoujia/be;

    const-string v1, "Next"

    invoke-direct {v0, v1, v3}, Lcom/alipay/wandoujia/be;-><init>(Ljava/lang/String;I)V

    .line 14
    sput-object v0, Lcom/alipay/wandoujia/be;->a:Lcom/alipay/wandoujia/be;

    .line 16
    new-instance v0, Lcom/alipay/wandoujia/be;

    const-string v1, "PrevWindow"

    invoke-direct {v0, v1, v4}, Lcom/alipay/wandoujia/be;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/alipay/wandoujia/be;->b:Lcom/alipay/wandoujia/be;

    .line 19
    new-instance v0, Lcom/alipay/wandoujia/be;

    const-string v1, "Exit"

    invoke-direct {v0, v1, v5}, Lcom/alipay/wandoujia/be;-><init>(Ljava/lang/String;I)V

    .line 20
    sput-object v0, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    .line 22
    new-instance v0, Lcom/alipay/wandoujia/be;

    const-string v1, "ClearInvalid"

    invoke-direct {v0, v1, v6}, Lcom/alipay/wandoujia/be;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/alipay/wandoujia/be;->d:Lcom/alipay/wandoujia/be;

    .line 25
    new-instance v0, Lcom/alipay/wandoujia/be;

    const-string v1, "PrevStep"

    invoke-direct {v0, v1, v7}, Lcom/alipay/wandoujia/be;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/alipay/wandoujia/be;->e:Lcom/alipay/wandoujia/be;

    .line 28
    new-instance v0, Lcom/alipay/wandoujia/be;

    const-string v1, "Wait"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/wandoujia/be;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/alipay/wandoujia/be;->f:Lcom/alipay/wandoujia/be;

    .line 31
    new-instance v0, Lcom/alipay/wandoujia/be;

    const-string v1, "Reset"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/wandoujia/be;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lcom/alipay/wandoujia/be;->g:Lcom/alipay/wandoujia/be;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/wandoujia/be;

    sget-object v1, Lcom/alipay/wandoujia/be;->a:Lcom/alipay/wandoujia/be;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/wandoujia/be;->b:Lcom/alipay/wandoujia/be;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/wandoujia/be;->c:Lcom/alipay/wandoujia/be;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/wandoujia/be;->d:Lcom/alipay/wandoujia/be;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/wandoujia/be;->e:Lcom/alipay/wandoujia/be;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/wandoujia/be;->f:Lcom/alipay/wandoujia/be;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/wandoujia/be;->g:Lcom/alipay/wandoujia/be;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/wandoujia/be;->h:[Lcom/alipay/wandoujia/be;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/wandoujia/be;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/wandoujia/be;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/be;

    return-object v0
.end method

.method public static values()[Lcom/alipay/wandoujia/be;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/wandoujia/be;->h:[Lcom/alipay/wandoujia/be;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/wandoujia/be;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
