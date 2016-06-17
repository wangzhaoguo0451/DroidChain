.class public final Lcom/wandoujia/ripple_framework/ReceiverMonitor;
.super Ljava/lang/Object;
.source "ReceiverMonitor.java"


# static fields
.field private static d:Lcom/wandoujia/ripple_framework/ReceiverMonitor;


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

.field public final b:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Lhau;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lgdw;
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
            "Lhat;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Leax;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->d:Lcom/wandoujia/ripple_framework/ReceiverMonitor;

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

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->e:Lgdw;

    .line 40
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a:Lgdw;

    .line 41
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->b:Lgdw;

    .line 42
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->f:Lgdw;

    .line 43
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->c:Lgdw;

    .line 44
    return-void
.end method

.method public static a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->d:Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v1

    .line 223
    :goto_0
    invoke-virtual {v1}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefm;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1}, Lefm;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->e:Lgdw;

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v1

    .line 137
    :goto_0
    invoke-virtual {v1}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhat;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p1, p2}, Lhat;->a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public final a(Leax;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->f:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method public final a(Lefm;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 212
    :cond_0
    return-void
.end method

.method public final a(Lhat;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->e:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 132
    :cond_0
    return-void
.end method
