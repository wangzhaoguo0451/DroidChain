.class public final Leve;
.super Ljava/lang/Object;
.source "AppCommentController.java"


# static fields
.field private static b:Leve;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/app/controller/AppCommenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Leve;

    invoke-direct {v0}, Leve;-><init>()V

    sput-object v0, Leve;->b:Leve;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leve;->a:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public static a()Leve;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Leve;->b:Leve;

    return-object v0
.end method

.method public static a(Levg;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    new-instance v0, Levf;

    invoke-direct {v0, p0}, Levf;-><init>(Levg;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
