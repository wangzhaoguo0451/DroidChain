.class public final Lgqm;
.super Ljava/lang/Object;
.source "AboutDialog.java"


# instance fields
.field final a:Landroid/content/Context;

.field public b:Lmt;

.field public final c:Lmu;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lgqm;->a:Landroid/content/Context;

    .line 32
    new-instance v0, Lmu;

    const v1, 0x7f0f008d

    invoke-direct {v0, p1, v1}, Lmu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lgqm;->c:Lmu;

    .line 33
    invoke-direct {p0}, Lgqm;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lgqm;->d:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lgqm;->c:Lmu;

    iget-object v1, p0, Lgqm;->d:Landroid/view/View;

    iget-object v0, v0, Lmu;->a:Lmp;

    iput-object v1, v0, Lmp;->o:Landroid/view/View;

    .line 35
    return-void
.end method

.method private a()Landroid/view/View;
    .locals 7

    .prologue
    .line 59
    iget-object v0, p0, Lgqm;->a:Landroid/content/Context;

    const v1, 0x7f03006a

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 61
    const v0, 0x7f0c01dd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lgqm;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 66
    iget-object v1, p0, Lgqm;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    .line 67
    iget-object v1, p0, Lgqm;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e0016

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    :try_start_0
    iget-object v5, p0, Lgqm;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method
