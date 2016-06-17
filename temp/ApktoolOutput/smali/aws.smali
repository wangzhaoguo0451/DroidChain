.class public Laws;
.super Ljava/lang/Object;


# static fields
.field private static i:Laws;


# instance fields
.field public final a:Landroid/content/Context;

.field final b:Landroid/content/Context;

.field public final c:Lbkj;

.field final d:Laxo;

.field final e:Lawc;

.field final f:Laxs;

.field final g:Lawf;

.field public final h:Laxr;

.field private final j:Lbkr;

.field private final k:Lawk;

.field private final l:Lawj;

.field private final m:Lavj;

.field private final n:Laxj;

.field private final o:Lavw;

.field private final p:Laxd;


# direct methods
.method private constructor <init>(Lawu;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v6, p1, Lawu;->a:Landroid/content/Context;

    const-string v0, "Application context can\'t be null"

    invoke-static {v6, v0}, Lg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, v6, Landroid/app/Application;

    const-string v1, "getApplicationContext didn\'t return the application"

    invoke-static {v0, v1}, Lg;->b(ZLjava/lang/Object;)V

    iget-object v0, p1, Lawu;->b:Landroid/content/Context;

    invoke-static {v0}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, p0, Laws;->a:Landroid/content/Context;

    iput-object v0, p0, Laws;->b:Landroid/content/Context;

    invoke-static {}, Lbkk;->c()Lbkj;

    move-result-object v0

    iput-object v0, p0, Laws;->c:Lbkj;

    invoke-static {p0}, Lawu;->b(Laws;)Laxo;

    move-result-object v0

    iput-object v0, p0, Laws;->d:Laxo;

    new-instance v0, Lawc;

    invoke-direct {v0, p0}, Lawc;-><init>(Laws;)V

    invoke-virtual {v0}, Lawc;->n()V

    iput-object v0, p0, Laws;->e:Lawc;

    invoke-virtual {p0}, Laws;->a()Lawc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google Analytics "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lawr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lawp;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lawu;->f(Laws;)Lawf;

    move-result-object v0

    invoke-virtual {v0}, Lawf;->n()V

    iput-object v0, p0, Laws;->g:Lawf;

    new-instance v0, Lawj;

    invoke-direct {v0, p0}, Lawj;-><init>(Laws;)V

    invoke-virtual {v0}, Lawj;->n()V

    iput-object v0, p0, Laws;->l:Lawj;

    new-instance v0, Lawk;

    invoke-direct {v0, p0, p1}, Lawk;-><init>(Laws;Lawu;)V

    invoke-static {p0}, Lawu;->a(Laws;)Laxj;

    move-result-object v1

    new-instance v2, Lavw;

    invoke-direct {v2, p0}, Lavw;-><init>(Laws;)V

    new-instance v3, Laxd;

    invoke-direct {v3, p0}, Laxd;-><init>(Laws;)V

    new-instance v4, Laxr;

    invoke-direct {v4, p0}, Laxr;-><init>(Laws;)V

    invoke-static {v6}, Lbkr;->a(Landroid/content/Context;)Lbkr;

    move-result-object v5

    new-instance v6, Lawt;

    invoke-direct {v6, p0}, Lawt;-><init>(Laws;)V

    iput-object v6, v5, Lbkr;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v5, p0, Laws;->j:Lbkr;

    new-instance v5, Lavj;

    invoke-direct {v5, p0}, Lavj;-><init>(Laws;)V

    invoke-virtual {v1}, Laxj;->n()V

    iput-object v1, p0, Laws;->n:Laxj;

    invoke-virtual {v2}, Lavw;->n()V

    iput-object v2, p0, Laws;->o:Lavw;

    invoke-virtual {v3}, Laxd;->n()V

    iput-object v3, p0, Laws;->p:Laxd;

    invoke-virtual {v4}, Laxr;->n()V

    iput-object v4, p0, Laws;->h:Laxr;

    invoke-static {p0}, Lawu;->e(Laws;)Laxs;

    move-result-object v1

    invoke-virtual {v1}, Laxs;->n()V

    iput-object v1, p0, Laws;->f:Laxs;

    invoke-virtual {v0}, Lawk;->n()V

    iput-object v0, p0, Laws;->k:Lawk;

    iget-object v1, v5, Laxx;->c:Laws;

    invoke-virtual {v1}, Laws;->e()Lawj;

    move-result-object v1

    invoke-virtual {v1}, Lawj;->d()Z

    invoke-virtual {v1}, Lawj;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lawj;->h()Z

    move-result v2

    iput-boolean v2, v5, Lavj;->b:Z

    :cond_0
    invoke-virtual {v1}, Lawj;->d()Z

    const/4 v1, 0x1

    iput-boolean v1, v5, Lavj;->a:Z

    iput-object v5, p0, Laws;->m:Lavj;

    iget-object v0, v0, Lawk;->a:Laxe;

    invoke-virtual {v0}, Laxe;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Laws;
    .locals 8

    invoke-static {p0}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Laws;->i:Laws;

    if-nez v0, :cond_1

    const-class v1, Laws;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laws;->i:Laws;

    if-nez v0, :cond_0

    invoke-static {}, Lbkk;->c()Lbkj;

    move-result-object v0

    invoke-interface {v0}, Lbkj;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lawu;

    invoke-direct {v5, v4}, Lawu;-><init>(Landroid/content/Context;)V

    new-instance v4, Laws;

    invoke-direct {v4, v5}, Laws;-><init>(Lawu;)V

    sput-object v4, Laws;->i:Laws;

    invoke-static {}, Lavj;->a()V

    invoke-interface {v0}, Lbkj;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Laxu;->E:Laxv;

    iget-object v0, v0, Laxv;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v4}, Laws;->a()Lawc;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lawc;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Laws;->i:Laws;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lawq;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lawq;->l()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lg;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public static i()V
    .locals 0

    invoke-static {}, Lbkr;->b()V

    return-void
.end method


# virtual methods
.method public final a()Lawc;
    .locals 1

    iget-object v0, p0, Laws;->e:Lawc;

    invoke-static {v0}, Laws;->a(Lawq;)V

    iget-object v0, p0, Laws;->e:Lawc;

    return-object v0
.end method

.method public final b()Lbkr;
    .locals 1

    iget-object v0, p0, Laws;->j:Lbkr;

    invoke-static {v0}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laws;->j:Lbkr;

    return-object v0
.end method

.method public final c()Lawk;
    .locals 1

    iget-object v0, p0, Laws;->k:Lawk;

    invoke-static {v0}, Laws;->a(Lawq;)V

    iget-object v0, p0, Laws;->k:Lawk;

    return-object v0
.end method

.method public final d()Lavj;
    .locals 2

    iget-object v0, p0, Laws;->m:Lavj;

    invoke-static {v0}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laws;->m:Lavj;

    iget-boolean v0, v0, Lavj;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lg;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Laws;->m:Lavj;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lawj;
    .locals 1

    iget-object v0, p0, Laws;->l:Lawj;

    invoke-static {v0}, Laws;->a(Lawq;)V

    iget-object v0, p0, Laws;->l:Lawj;

    return-object v0
.end method

.method public final f()Lavw;
    .locals 1

    iget-object v0, p0, Laws;->o:Lavw;

    invoke-static {v0}, Laws;->a(Lawq;)V

    iget-object v0, p0, Laws;->o:Lavw;

    return-object v0
.end method

.method public final g()Laxj;
    .locals 1

    iget-object v0, p0, Laws;->n:Laxj;

    invoke-static {v0}, Laws;->a(Lawq;)V

    iget-object v0, p0, Laws;->n:Laxj;

    return-object v0
.end method

.method public final h()Laxd;
    .locals 1

    iget-object v0, p0, Laws;->p:Laxd;

    invoke-static {v0}, Laws;->a(Lawq;)V

    iget-object v0, p0, Laws;->p:Laxd;

    return-object v0
.end method
