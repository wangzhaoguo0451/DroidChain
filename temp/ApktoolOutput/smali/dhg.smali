.class public final Ldhg;
.super Lhic;
.source "AppInstalledFragment.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 520
    invoke-direct {p0}, Ldhg;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0c0002

    .line 523
    invoke-virtual {p0}, Ldhg;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Leha;->a()Leha;

    const-string v1, "gl_guide_title"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/wandoujia/launcher_base/R$string;->launcher_guide_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p0}, Ldhg;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Leha;->a()Leha;

    const-string v1, "gl_guide_subtitle"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/wandoujia/launcher_base/R$string;->launcher_guide_subtitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-static {}, Leha;->a()Leha;

    const-string v0, "gl_guide_action"

    const-string v1, "apk"

    invoke-static {v0, v1}, Ld;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    const-string v1, "com.wandoujia.game_launcher"

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-virtual {p0}, Ldhg;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :cond_0
    :goto_0
    invoke-static {}, Leha;->a()Leha;

    const-string v0, "local"

    invoke-static {}, Leha;->a()Leha;

    const-string v1, "gl_guide_icon_source"

    const-string v2, "local"

    invoke-static {v1, v2}, Ld;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    new-instance v0, Ldhh;

    invoke-direct {v0, p0}, Ldhh;-><init>(Ldhg;)V

    invoke-static {v0}, Ledn;->a(Ledr;)V

    .line 559
    :goto_1
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Ldhg;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 556
    :cond_2
    new-instance v1, Lhma;

    invoke-direct {v1}, Lhma;-><init>()V

    invoke-virtual {p0}, Ldhg;->f()Leri;

    move-result-object v0

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->f()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00ca

    invoke-virtual {v1, v0, v2, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_1
.end method
