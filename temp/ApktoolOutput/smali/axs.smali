.class public final Laxs;
.super Lawq;


# instance fields
.field a:Z

.field b:Z

.field private c:Landroid/app/AlarmManager;


# direct methods
.method protected constructor <init>(Laws;)V
    .locals 2

    invoke-direct {p0, p1}, Lawq;-><init>(Laws;)V

    iget-object v0, p0, Lawp;->d:Laws;

    iget-object v0, v0, Laws;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Laxs;->c:Landroid/app/AlarmManager;

    return-void
.end method

.method private d()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lawp;->d:Laws;

    iget-object v1, v1, Laws;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/analytics/AnalyticsReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lawp;->d:Laws;

    iget-object v1, v1, Laws;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Laxs;->c:Landroid/app/AlarmManager;

    invoke-direct {p0}, Laxs;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Laxo;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lawp;->d:Laws;

    iget-object v0, v0, Laws;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lawp;->d:Laws;

    iget-object v2, v2, Laws;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/analytics/AnalyticsReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Receiver registered. Using alarm for local dispatch."

    invoke-virtual {p0, v0}, Laxs;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laxs;->a:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Laxs;->m()V

    iget-boolean v0, p0, Laxs;->a:Z

    const-string v1, "Receiver not registered"

    invoke-static {v0, v1}, Lg;->a(ZLjava/lang/Object;)V

    invoke-static {}, Laxo;->e()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    invoke-virtual {p0}, Laxs;->c()V

    iget-object v2, p0, Lawp;->d:Laws;

    iget-object v2, v2, Laws;->c:Lbkj;

    invoke-interface {v2}, Lbkj;->b()J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laxs;->b:Z

    iget-object v0, p0, Laxs;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-direct {p0}, Laxs;->d()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Laxs;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laxs;->b:Z

    iget-object v0, p0, Laxs;->c:Landroid/app/AlarmManager;

    invoke-direct {p0}, Laxs;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
