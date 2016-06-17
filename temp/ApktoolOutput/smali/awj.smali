.class public final Lawj;
.super Lawq;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Laws;)V
    .locals 0

    invoke-direct {p0, p1}, Lawq;-><init>(Laws;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lawp;->d:Laws;

    iget-object v0, v0, Laws;->a:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x81

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lawj;->d(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v5, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v5, v0}, Lawj;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v3, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v3, Laxw;

    iget-object v5, p0, Lawp;->d:Laws;

    invoke-direct {v3, v5}, Laxw;-><init>(Laws;)V

    invoke-virtual {v3, v0}, Laxw;->a(I)Leax;

    move-result-object v0

    check-cast v0, Lavx;

    if-eqz v0, :cond_0

    const-string v3, "Loading global XML config values"

    invoke-virtual {p0, v3}, Lawj;->b(Ljava/lang/String;)V

    iget-object v3, v0, Lavx;->a:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v3, v1

    :goto_2
    if-eqz v3, :cond_2

    iget-object v3, v0, Lavx;->a:Ljava/lang/String;

    iput-object v3, p0, Lawj;->b:Ljava/lang/String;

    const-string v5, "XML config - app name"

    invoke-virtual {p0, v5, v3}, Lawj;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v3, v0, Lavx;->b:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v3, v1

    :goto_3
    if-eqz v3, :cond_3

    iget-object v3, v0, Lavx;->b:Ljava/lang/String;

    iput-object v3, p0, Lawj;->a:Ljava/lang/String;

    const-string v5, "XML config - app version"

    invoke-virtual {p0, v5, v3}, Lawj;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v3, v0, Lavx;->c:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v3, v1

    :goto_4
    if-eqz v3, :cond_4

    iget-object v3, v0, Lavx;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "verbose"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v2

    :goto_5
    if-ltz v3, :cond_4

    const-string v5, "XML config - log level"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lawj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget v3, v0, Lavx;->d:I

    if-ltz v3, :cond_d

    move v3, v1

    :goto_6
    if-eqz v3, :cond_5

    iget v3, v0, Lavx;->d:I

    iput v3, p0, Lawj;->e:I

    iput-boolean v1, p0, Lawj;->c:Z

    const-string v5, "XML config - dispatch period (sec)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lawj;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget v3, v0, Lavx;->e:I

    if-eq v3, v4, :cond_e

    move v3, v1

    :goto_7
    if-eqz v3, :cond_0

    iget v0, v0, Lavx;->e:I

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lawj;->g:Z

    iput-boolean v1, p0, Lawj;->f:Z

    const-string v1, "XML config - dry run"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lawj;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    const-string v5, "info"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    const-string v5, "warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v3, 0x2

    goto :goto_5

    :cond_b
    const-string v5, "error"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    goto :goto_5

    :cond_c
    move v3, v4

    goto :goto_5

    :cond_d
    move v3, v2

    goto :goto_6

    :cond_e
    move v3, v2

    goto :goto_7

    :cond_f
    move v0, v2

    goto :goto_8
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lawj;->m()V

    iget-object v0, p0, Lawj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lawj;->m()V

    iget-object v0, p0, Lawj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lawj;->m()V

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lawj;->m()V

    iget-boolean v0, p0, Lawj;->c:Z

    return v0
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lawj;->m()V

    iget v0, p0, Lawj;->e:I

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lawj;->m()V

    iget-boolean v0, p0, Lawj;->f:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Lawj;->m()V

    iget-boolean v0, p0, Lawj;->g:Z

    return v0
.end method
