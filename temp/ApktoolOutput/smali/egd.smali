.class public final Legd;
.super Legg;
.source "LauncherEndCell.java"


# instance fields
.field private a:I

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View$OnClickListener;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Z

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Legg;-><init>()V

    .line 21
    iput v0, p0, Legd;->a:I

    .line 24
    iput v0, p0, Legd;->i:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Legd;->l:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 59
    if-eqz p1, :cond_0

    .line 74
    :goto_0
    return-object p1

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$layout;->launcher_end_cell:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Legd;->m:Landroid/view/View;

    .line 64
    iget v0, p0, Legd;->a:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Legd;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Legd;->h:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Legd;->m:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->left_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Legd;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Legd;->m:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->left_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Legd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Legd;->m:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->left_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Legd;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_1
    iget v0, p0, Legd;->i:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Legd;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Legd;->k:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Legd;->m:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->right_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Legd;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v0, p0, Legd;->m:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->right_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Legd;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Legd;->m:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->right_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Legd;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_2
    iget-object p1, p0, Legd;->m:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Legd;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Legd;->m:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->end_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Legd;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_0
    return-void

    .line 80
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Legd;->a:I

    .line 32
    iput-object p2, p0, Legd;->g:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Legd;->h:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method

.method protected final a(Legh;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 48
    invoke-virtual {p1}, Legh;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lehw;

    invoke-direct {v0, v1, v1}, Lehw;-><init>(II)V

    iput-object v0, p0, Legg;->e:Lehw;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Legd;->l:Z

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lehw;

    invoke-direct {v0, v1, v2}, Lehw;-><init>(II)V

    iput-object v0, p0, Legg;->e:Lehw;

    .line 53
    iput-boolean v2, p0, Legd;->l:Z

    goto :goto_0
.end method

.method public final b(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Legd;->i:I

    .line 38
    iput-object p2, p0, Legd;->j:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Legd;->k:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method
