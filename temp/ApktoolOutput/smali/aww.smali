.class public final Laww;
.super Lawq;


# instance fields
.field final a:Lawy;

.field b:Lcom/google/android/gms/analytics/internal/zzac;

.field private final c:Laxp;

.field private e:Lawh;


# direct methods
.method protected constructor <init>(Laws;)V
    .locals 2

    invoke-direct {p0, p1}, Lawq;-><init>(Laws;)V

    new-instance v0, Lawh;

    iget-object v1, p1, Laws;->c:Lbkj;

    invoke-direct {v0, v1}, Lawh;-><init>(Lbkj;)V

    iput-object v0, p0, Laww;->e:Lawh;

    new-instance v0, Lawy;

    invoke-direct {v0, p0}, Lawy;-><init>(Laww;)V

    iput-object v0, p0, Laww;->a:Lawy;

    new-instance v0, Lawx;

    invoke-direct {v0, p0, p1}, Lawx;-><init>(Laww;Laws;)V

    iput-object v0, p0, Laww;->c:Laxp;

    return-void
.end method

.method static synthetic a(Laww;)V
    .locals 1

    invoke-static {}, Laws;->i()V

    invoke-virtual {p0}, Laww;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Laww;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Laww;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final a(Lavy;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Laws;->i()V

    invoke-virtual {p0}, Laww;->m()V

    iget-object v0, p0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p1, Lavy;->f:Z

    if-eqz v1, :cond_1

    invoke-static {}, Laxo;->h()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    iget-object v1, p1, Lavy;->a:Ljava/util/Map;

    iget-wide v2, p1, Lavy;->d:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/zzac;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Laww;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Laxo;->i()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Laww;->b(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    invoke-static {}, Laws;->i()V

    invoke-virtual {p0}, Laww;->m()V

    iget-object v0, p0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 4

    iget-object v0, p0, Laww;->e:Lawh;

    invoke-virtual {v0}, Lawh;->a()V

    iget-object v1, p0, Laww;->c:Laxp;

    sget-object v0, Laxu;->A:Laxv;

    iget-object v0, v0, Laxv;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Laxp;->a(J)V

    return-void
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Laws;->i()V

    invoke-virtual {p0}, Laww;->m()V

    iget-object v1, p0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Laww;->a:Lawy;

    invoke-virtual {v1}, Lawy;->a()Lcom/google/android/gms/analytics/internal/zzac;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-virtual {p0}, Laww;->c()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Laws;->i()V

    invoke-virtual {p0}, Laww;->m()V

    :try_start_0
    invoke-static {}, Lbap;->a()Lbap;

    iget-object v0, p0, Lawp;->d:Laws;

    iget-object v0, v0, Laws;->a:Landroid/content/Context;

    iget-object v1, p0, Laww;->a:Lawy;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->c()Lawk;

    move-result-object v0

    invoke-virtual {v0}, Lawk;->c()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
