.class public enum Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;
.super Ljava/lang/Enum;
.source "PhoenixCachedHttpResponse.java"

# interfaces
.implements Lhvm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;",
        ">;",
        "Lhvm;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

.field public static final enum CLOSE:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

.field public static final enum CLOSE_ON_FAILURE:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

.field public static final enum NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    new-instance v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener$1;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->CLOSE:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    .line 264
    new-instance v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener$2;

    const-string v1, "CLOSE_ON_FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->CLOSE_ON_FAILURE:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    .line 274
    new-instance v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener$3;

    const-string v1, "NO_OP_LISTENER"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    sget-object v1, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->CLOSE:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->CLOSE_ON_FAILURE:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->$VALUES:[Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILd;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static findListenerByName(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;
    .locals 5
    .parameter

    .prologue
    .line 285
    invoke-static {}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->values()[Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 286
    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    :goto_1
    return-object v0

    .line 285
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(I)Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;
    .locals 2
    .parameter

    .prologue
    .line 294
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->values()[Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid ordinal"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->values()[Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;
    .locals 1
    .parameter

    .prologue
    .line 249
    const-class v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->$VALUES:[Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    return-object v0
.end method


# virtual methods
.method public operationComplete(Lhvl;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    return-void
.end method
