.class public final Leze;
.super Legg;
.source "CleanCell.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Legg;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c000c

    const/4 v7, 0x0

    .line 51
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezf;

    move-object v2, v0

    move-object v1, p1

    .line 58
    :goto_0
    instance-of v0, v1, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 59
    check-cast v0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    new-instance v3, Leyk;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getCircleProgressBar()Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    move-result-object v4

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getProgressText()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getProgressImg()Landroid/widget/ImageView;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Leyk;-><init>(Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v3, v2, Lezf;->a:Leyk;

    new-instance v3, Lezg;

    invoke-direct {v3, v2, v0}, Lezg;-><init>(Lezf;Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;)V

    iput-object v3, v2, Lezf;->b:Leyg;

    iget-wide v4, v2, Lezf;->e:J

    new-instance v3, Lezi;

    invoke-direct {v3, v2, v4, v5, v0}, Lezi;-><init>(Lezf;JLcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;)V

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lezf;->a:Leyk;

    invoke-virtual {v3, v7}, Leyk;->a(I)V

    invoke-virtual {v0, v7}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getStatusText()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0e0527

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getProgressText()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Lezj;

    invoke-direct {v3, v2, v0}, Lezj;-><init>(Lezf;Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-static {v3, v0}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-object v1

    .line 54
    :cond_1
    invoke-static {p2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    move-result-object v1

    .line 55
    new-instance v0, Lezf;

    invoke-direct {v0, v7}, Lezf;-><init>(B)V

    .line 56
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, v0

    goto :goto_0
.end method
