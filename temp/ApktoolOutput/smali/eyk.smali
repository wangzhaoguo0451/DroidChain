.class public final Leyk;
.super Ljava/lang/Object;
.source "CleanStatusUIHandler.java"


# instance fields
.field private final a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    .line 40
    iput-object p2, p0, Leyk;->b:Landroid/widget/TextView;

    .line 41
    iput-object p3, p0, Leyk;->c:Landroid/widget/ImageView;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0a0064

    const v2, 0x7f0a0063

    const v5, 0x7f0a0062

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 45
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    packed-switch p1, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setProgress(I)V

    .line 49
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setSecondColor(I)V

    .line 50
    iget-object v1, p0, Leyk;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Leyk;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Leyk;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setProgress(I)V

    .line 56
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    const v2, 0x7f0a0065

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setSecondColor(I)V

    .line 57
    iget-object v1, p0, Leyk;->b:Landroid/widget/TextView;

    const v2, 0x7f0a0066

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Leyk;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Leyk;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setProgress(I)V

    .line 63
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    const v2, 0x7f0a0060

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setSecondColor(I)V

    .line 64
    iget-object v1, p0, Leyk;->b:Landroid/widget/TextView;

    const v2, 0x7f0a0061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v0, p0, Leyk;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Leyk;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setPrimaryColor(I)V

    .line 70
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setSecondColor(I)V

    .line 71
    iget-object v0, p0, Leyk;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Leyk;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Leyk;->c:Landroid/widget/ImageView;

    const v1, 0x7f0202d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 76
    :pswitch_4
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setPrimaryColor(I)V

    .line 77
    iget-object v1, p0, Leyk;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setSecondColor(I)V

    .line 78
    iget-object v0, p0, Leyk;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Leyk;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Leyk;->c:Landroid/widget/ImageView;

    const v1, 0x7f0202d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
