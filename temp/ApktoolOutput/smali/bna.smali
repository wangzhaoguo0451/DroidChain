.class final Lbna;
.super Lbmz;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static e:Lbna;


# instance fields
.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbna;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbmz;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lbna;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbna;->c:Z

    new-instance v0, Lbnb;

    invoke-direct {v0}, Lbnb;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbna;->d:Z

    return-void
.end method

.method private declared-synchronized a(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbna;->d:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lbna;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lbna;->b:I

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lbna;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lbna;->b:I

    if-lez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lbna;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lbna;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->e()V

    iput-boolean p1, p0, Lbna;->d:Z

    iput-boolean p2, p0, Lbna;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static c()Lbna;
    .locals 1

    sget-object v0, Lbna;->e:Lbna;

    if-nez v0, :cond_0

    new-instance v0, Lbna;

    invoke-direct {v0}, Lbna;-><init>()V

    sput-object v0, Lbna;->e:Lbna;

    :cond_0
    sget-object v0, Lbna;->e:Lbna;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lbml;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbna;->d:Z

    invoke-direct {p0, v0, p1}, Lbna;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbna;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbna;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lbna;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lbna;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lbna;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
