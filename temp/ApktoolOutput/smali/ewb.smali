.class public final Lewb;
.super Ljava/lang/Object;
.source "GiftConfigControllor.java"


# static fields
.field private static c:Lewb;


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lewb;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lewb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lewb;->c:Lewb;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lewb;

    invoke-direct {v0}, Lewb;-><init>()V

    sput-object v0, Lewb;->c:Lewb;

    .line 28
    :cond_0
    sget-object v0, Lewb;->c:Lewb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
