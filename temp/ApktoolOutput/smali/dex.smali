.class final Ldex;
.super Lhhl;
.source "DetailFragment.java"


# instance fields
.field private synthetic a:Ldew;


# direct methods
.method constructor <init>(Ldew;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Ldex;->a:Ldew;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 601
    new-instance v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;-><init>()V

    .line 602
    iget-object v1, p0, Ldex;->a:Ldew;

    iget-object v1, v1, Ldew;->a:Ldev;

    iget-object v1, v1, Ldev;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    .line 603
    iget-object v2, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v2, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->packageName:Ljava/lang/String;

    .line 604
    iget-object v2, v1, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    iput-object v2, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->appType:Ljava/lang/String;

    .line 605
    invoke-static {v1}, Ldwk;->d(Lcom/wandoujia/api/proto/AppDetail;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->vc:J

    .line 606
    iget-object v2, v1, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->title:Ljava/lang/String;

    .line 607
    invoke-static {v1}, Ldwk;->e(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->md5:Ljava/lang/String;

    .line 608
    invoke-static {v1}, Ldwk;->f(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->downloadUrl:Ljava/lang/String;

    .line 609
    iget-object v1, p0, Ldex;->a:Ldew;

    invoke-virtual {v1}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->a(Landroid/content/Context;Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;)V

    .line 610
    const/4 v0, 0x0

    return v0
.end method
