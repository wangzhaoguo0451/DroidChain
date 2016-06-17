.class public final enum Lcom/wandoujia/base/utils/ThreadPool$Priority;
.super Ljava/lang/Enum;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/base/utils/ThreadPool$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/base/utils/ThreadPool$Priority;

.field public static final enum LOW:Lcom/wandoujia/base/utils/ThreadPool$Priority;

.field public static final enum NORMAL:Lcom/wandoujia/base/utils/ThreadPool$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/base/utils/ThreadPool$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;->NORMAL:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    new-instance v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/base/utils/ThreadPool$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;->LOW:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/base/utils/ThreadPool$Priority;

    sget-object v1, Lcom/wandoujia/base/utils/ThreadPool$Priority;->NORMAL:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/base/utils/ThreadPool$Priority;->LOW:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;->$VALUES:[Lcom/wandoujia/base/utils/ThreadPool$Priority;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/base/utils/ThreadPool$Priority;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/base/utils/ThreadPool$Priority;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;->$VALUES:[Lcom/wandoujia/base/utils/ThreadPool$Priority;

    invoke-virtual {v0}, [Lcom/wandoujia/base/utils/ThreadPool$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/base/utils/ThreadPool$Priority;

    return-object v0
.end method
