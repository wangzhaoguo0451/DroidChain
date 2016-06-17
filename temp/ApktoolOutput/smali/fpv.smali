.class public final Lfpv;
.super Lfpj;
.source "ServeModeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfpj",
        "<",
        "Ldd;",
        ">;"
    }
.end annotation


# static fields
.field private static g:Lfpv;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private e:Ljava/lang/String;

.field private final f:Lefm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lfpv;->g:Lfpv;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    sput-object v0, Lfpv;->g:Lfpv;

    .line 55
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lfpj;-><init>()V

    .line 26
    iput-boolean v0, p0, Lfpv;->a:Z

    .line 28
    iput-boolean v0, p0, Lfpv;->b:Z

    .line 30
    iput-boolean v0, p0, Lfpv;->c:Z

    .line 32
    iput-boolean v0, p0, Lfpv;->d:Z

    .line 36
    new-instance v0, Lfpw;

    invoke-direct {v0, p0}, Lfpw;-><init>(Lfpv;)V

    iput-object v0, p0, Lfpv;->f:Lefm;

    .line 58
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    iget-object v1, p0, Lfpv;->f:Lefm;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lefm;)V

    .line 59
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0}, Lfpv;->a()Landroid/os/Handler;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    :cond_0
    return-void
.end method

.method static synthetic a(Lfpv;)V
    .locals 1
    .parameter

    .prologue
    .line 10
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lfpv;->a(I)V

    return-void
.end method

.method public static c()Lfpv;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lfpv;->g:Lfpv;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(ZZZZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lfpv;->a:Z

    .line 162
    iput-boolean p2, p0, Lfpv;->d:Z

    .line 163
    iput-boolean p3, p0, Lfpv;->b:Z

    .line 164
    iput-boolean p4, p0, Lfpv;->c:Z

    .line 165
    iput-object p5, p0, Lfpv;->e:Ljava/lang/String;

    .line 167
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lfpv;->a(I)V

    .line 168
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lfpv;->a(I)V

    .line 169
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lfpv;->a(I)V

    .line 170
    new-instance v0, Lfpz;

    invoke-direct {v0}, Lfpz;-><init>()V

    invoke-virtual {p0}, Lfpv;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfpv;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfpv;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfpv;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Z
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfpv;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfpv;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lfpv;->a:Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfpv;->d:Z

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfpv;->b:Z

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfpv;->c:Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lfpv;->e:Ljava/lang/String;

    .line 146
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lfpv;->a(I)V

    .line 147
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lfpv;->a(I)V

    .line 148
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lfpv;->a(I)V

    .line 149
    new-instance v0, Lfpy;

    invoke-direct {v0}, Lfpy;-><init>()V

    invoke-virtual {p0}, Lfpv;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
