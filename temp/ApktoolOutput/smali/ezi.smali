.class final Lezi;
.super Ljava/lang/Object;
.source "CleanCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

.field private synthetic c:Lezf;


# direct methods
.method constructor <init>(Lezf;JLcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lezi;->c:Lezf;

    iput-wide p2, p0, Lezi;->a:J

    iput-object p4, p0, Lezi;->b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    iget-wide v0, p0, Lezi;->a:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-static {}, Lcom/wandoujia/base/utils/MemoryUtil;->getTotalMemory()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lfam;->a(Landroid/view/View;J)V

    .line 98
    iget-object v0, p0, Lezi;->c:Lezf;

    iget-object v0, v0, Lezf;->a:Leyk;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 99
    iget-object v0, p0, Lezi;->b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getStatusText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e016d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lezi;->c:Lezf;

    iget-object v1, p0, Lezi;->b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    new-instance v2, Lezl;

    invoke-direct {v2, v0, v1}, Lezl;-><init>(Lezf;Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;)V

    iput-object v2, v0, Lezf;->d:Leys;

    new-instance v1, Leyl;

    iget-object v2, v0, Lezf;->d:Leys;

    invoke-direct {v1, v2}, Leyl;-><init>(Leys;)V

    iput-object v1, v0, Lezf;->c:Leyl;

    new-instance v1, Leye;

    invoke-direct {v1}, Leye;-><init>()V

    iget-object v2, v0, Lezf;->c:Leyl;

    invoke-virtual {v2}, Leyl;->a()V

    new-instance v2, Lezm;

    invoke-direct {v2, v0}, Lezm;-><init>(Lezf;)V

    invoke-virtual {v1, v2}, Leye;->a(Lcrq;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lezi;->b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->setEnabled(Z)V

    .line 102
    return-void
.end method
