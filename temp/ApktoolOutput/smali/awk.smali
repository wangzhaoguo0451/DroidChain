.class public final Lawk;
.super Lawq;


# instance fields
.field final a:Laxe;


# direct methods
.method public constructor <init>(Laws;Lawu;)V
    .locals 1

    invoke-direct {p0, p1}, Lawq;-><init>(Laws;)V

    invoke-static {p2}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lawu;->c(Laws;)Laxe;

    move-result-object v0

    iput-object v0, p0, Lawk;->a:Laxe;

    return-void
.end method


# virtual methods
.method public final a(Lawv;)J
    .locals 4

    invoke-virtual {p0}, Lawk;->m()V

    invoke-static {p1}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Laws;->i()V

    iget-object v0, p0, Lawk;->a:Laxe;

    invoke-virtual {v0, p1}, Laxe;->b(Lawv;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lawk;->a:Laxe;

    invoke-virtual {v2, p1}, Laxe;->a(Lawv;)V

    :cond_0
    return-wide v0
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lawk;->a:Laxe;

    invoke-virtual {v0}, Laxe;->n()V

    return-void
.end method

.method public final a(Lavy;)V
    .locals 2

    invoke-static {p1}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lawk;->m()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lawk;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->b()Lbkr;

    move-result-object v0

    new-instance v1, Lawn;

    invoke-direct {v1, p0, p1}, Lawn;-><init>(Lawk;Lavy;)V

    invoke-virtual {v0, v1}, Lbkr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Laxt;)V
    .locals 2

    invoke-virtual {p0}, Lawk;->m()V

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->b()Lbkr;

    move-result-object v0

    new-instance v1, Lawo;

    invoke-direct {v1, p0, p1}, Lawo;-><init>(Lawk;Laxt;)V

    invoke-virtual {v0, v1}, Lbkr;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lawk;->m()V

    iget-object v0, p0, Lawp;->d:Laws;

    iget-object v0, v0, Laws;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lawk;->a(Laxt;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lawk;->m()V

    invoke-static {}, Lbkr;->b()V

    iget-object v0, p0, Lawk;->a:Laxe;

    invoke-virtual {v0}, Laxe;->e()V

    return-void
.end method

.method final d()V
    .locals 1

    invoke-static {}, Laws;->i()V

    iget-object v0, p0, Lawk;->a:Laxe;

    invoke-virtual {v0}, Laxe;->d()V

    return-void
.end method

.method final e()V
    .locals 4

    invoke-static {}, Laws;->i()V

    iget-object v0, p0, Lawk;->a:Laxe;

    invoke-static {}, Laws;->i()V

    iget-object v1, v0, Lawp;->d:Laws;

    iget-object v1, v1, Laws;->c:Lbkj;

    invoke-interface {v1}, Lbkj;->a()J

    move-result-wide v2

    iput-wide v2, v0, Laxe;->a:J

    return-void
.end method
