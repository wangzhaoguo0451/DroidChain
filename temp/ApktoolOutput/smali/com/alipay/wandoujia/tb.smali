.class public final enum Lcom/alipay/wandoujia/tb;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/wandoujia/tb;

.field public static final enum b:Lcom/alipay/wandoujia/tb;

.field public static final enum c:Lcom/alipay/wandoujia/tb;

.field public static final enum d:Lcom/alipay/wandoujia/tb;

.field public static final enum e:Lcom/alipay/wandoujia/tb;

.field public static final enum f:Lcom/alipay/wandoujia/tb;

.field public static final enum g:Lcom/alipay/wandoujia/tb;

.field private static final synthetic i:[Lcom/alipay/wandoujia/tb;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/alipay/wandoujia/tb;

    const-string v1, "left"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/wandoujia/tb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/wandoujia/tb;->a:Lcom/alipay/wandoujia/tb;

    new-instance v0, Lcom/alipay/wandoujia/tb;

    const-string v1, "right"

    invoke-direct {v0, v1, v5, v5}, Lcom/alipay/wandoujia/tb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/wandoujia/tb;->b:Lcom/alipay/wandoujia/tb;

    new-instance v0, Lcom/alipay/wandoujia/tb;

    const-string v1, "top"

    .line 6
    invoke-direct {v0, v1, v6, v6}, Lcom/alipay/wandoujia/tb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/wandoujia/tb;->c:Lcom/alipay/wandoujia/tb;

    new-instance v0, Lcom/alipay/wandoujia/tb;

    const-string v1, "bottom"

    invoke-direct {v0, v1, v7, v7}, Lcom/alipay/wandoujia/tb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/wandoujia/tb;->d:Lcom/alipay/wandoujia/tb;

    new-instance v0, Lcom/alipay/wandoujia/tb;

    const-string v1, "center_v"

    .line 7
    invoke-direct {v0, v1, v8, v8}, Lcom/alipay/wandoujia/tb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/wandoujia/tb;->e:Lcom/alipay/wandoujia/tb;

    new-instance v0, Lcom/alipay/wandoujia/tb;

    const-string v1, "center_h"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/tb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/wandoujia/tb;->f:Lcom/alipay/wandoujia/tb;

    new-instance v0, Lcom/alipay/wandoujia/tb;

    const-string v1, "center"

    const/4 v2, 0x6

    .line 8
    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/tb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/wandoujia/tb;->g:Lcom/alipay/wandoujia/tb;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/wandoujia/tb;

    sget-object v1, Lcom/alipay/wandoujia/tb;->a:Lcom/alipay/wandoujia/tb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/wandoujia/tb;->b:Lcom/alipay/wandoujia/tb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/wandoujia/tb;->c:Lcom/alipay/wandoujia/tb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/wandoujia/tb;->d:Lcom/alipay/wandoujia/tb;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/wandoujia/tb;->e:Lcom/alipay/wandoujia/tb;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/wandoujia/tb;->f:Lcom/alipay/wandoujia/tb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/wandoujia/tb;->g:Lcom/alipay/wandoujia/tb;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/wandoujia/tb;->i:[Lcom/alipay/wandoujia/tb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/alipay/wandoujia/tb;->h:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/wandoujia/tb;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/wandoujia/tb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/tb;

    return-object v0
.end method

.method public static values()[Lcom/alipay/wandoujia/tb;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/wandoujia/tb;->i:[Lcom/alipay/wandoujia/tb;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/wandoujia/tb;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/alipay/wandoujia/tb;->h:I

    return v0
.end method
