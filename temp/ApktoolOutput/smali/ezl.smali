.class final Lezl;
.super Ljava/lang/Object;
.source "CleanCell.java"

# interfaces
.implements Leys;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

.field private synthetic c:Lezf;


# direct methods
.method constructor <init>(Lezf;Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lezl;->c:Lezf;

    iput-object p2, p0, Lezl;->b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lezl;->a:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const v6, 0x7f0e0174

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    iget-object v0, p0, Lezl;->b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getCircleProgressBar()Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setProgress(I)V

    .line 161
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lezl;->a:Z

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lezl;->c:Lezf;

    iget-object v0, v0, Lezf;->a:Leyk;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 163
    iget-object v0, p0, Lezl;->b:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getStatusText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v0, p0, Lezl;->c:Lezf;

    iget-object v0, v0, Lezf;->b:Leyg;

    invoke-static {v0}, Leyf;->a(Leyg;)V

    .line 166
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/MemoryUtil;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 167
    iget-object v2, p0, Lezl;->c:Lezf;

    iget-wide v2, v2, Lezf;->e:J

    sub-long v0, v2, v0

    .line 169
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lezl;->c:Lezf;

    iget-wide v2, v2, Lezf;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 171
    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    :goto_0
    iput-boolean v8, p0, Lezl;->a:Z

    .line 189
    :cond_1
    return-void

    .line 174
    :cond_2
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v0

    iget-object v4, p0, Lezl;->c:Lezf;

    iget-wide v4, v4, Lezf;->e:J

    div-long/2addr v2, v4

    .line 175
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    .line 176
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 179
    :cond_3
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0173

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
