.class public final Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;
.super Ljava/lang/Object;
.source "ReceiverMonitor.java"


# static fields
.field private static b:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;


# instance fields
.field public final a:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Lefm;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Ldd;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Ldd;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Ldd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    invoke-direct {v0}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;-><init>()V

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->b:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->c:Lgdw;

    .line 40
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a:Lgdw;

    .line 41
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->d:Lgdw;

    .line 42
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->e:Lgdw;

    .line 43
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    .line 44
    return-void
.end method

.method public static a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->b:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    return-object v0
.end method


# virtual methods
.method public final a(Lefm;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 206
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->c:Lgdw;

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v1

    .line 137
    :cond_0
    invoke-virtual {v1}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    if-nez v0, :cond_0

    .line 138
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->d:Lgdw;

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v1

    .line 176
    :cond_0
    invoke-virtual {v1}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    if-nez v0, :cond_0

    .line 177
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->e:Lgdw;

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v1

    .line 197
    :cond_0
    invoke-virtual {v1}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    if-nez v0, :cond_0

    .line 198
    return-void
.end method
