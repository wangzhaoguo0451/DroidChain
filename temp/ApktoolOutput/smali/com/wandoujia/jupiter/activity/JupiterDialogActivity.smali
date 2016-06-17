.class public Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "JupiterDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iput-object p2, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->f:Landroid/view/View$OnClickListener;

    .line 70
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iput-object p2, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->g:Landroid/view/View$OnClickListener;

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 95
    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->finish()V

    .line 113
    return-void

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->f:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->g:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0189
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 34
    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->setTheme(I)V

    .line 35
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0301f2

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 40
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 41
    invoke-static {p0}, Lhoj;->a(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    const v0, 0x7f0c0182

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->a:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c0185

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0c0189

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->c:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f0c018a

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->d:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0c018b

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->e:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    return-void
.end method
