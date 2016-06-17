.class public final Lxn;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Lxq;

.field private b:Landroid/content/DialogInterface;

.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lxq;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p1, Lxq;->c:Landroid/content/Context;

    const-string v1, "AlertDialog"

    invoke-static {v1}, Lg;->h(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lxn;->l:Z

    .line 193
    new-instance v0, Lxr;

    invoke-direct {v0, p0}, Lxr;-><init>(Lxn;)V

    iput-object v0, p0, Lxn;->m:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p1, p0, Lxn;->a:Lxq;

    .line 66
    iput-object p0, p0, Lxn;->b:Landroid/content/DialogInterface;

    .line 67
    new-instance v0, Lxp;

    iget-object v1, p0, Lxn;->b:Landroid/content/DialogInterface;

    invoke-direct {v0, v1}, Lxp;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lxn;->c:Landroid/os/Handler;

    .line 68
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lxn;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lxn;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lxn;)Landroid/content/DialogInterface;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lxn;->b:Landroid/content/DialogInterface;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    if-eqz p3, :cond_0

    .line 220
    iget-object v0, p0, Lxn;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 223
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lxn;->a:Lxq;

    iput-object p2, v0, Lxq;->e:Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Lxn;->a:Lxq;

    iput-object p4, v0, Lxq;->i:Landroid/os/Message;

    .line 233
    :goto_0
    return-void

    .line 231
    :pswitch_1
    iget-object v0, p0, Lxn;->a:Lxq;

    iput-object p2, v0, Lxq;->f:Ljava/lang/CharSequence;

    .line 232
    iget-object v0, p0, Lxn;->a:Lxq;

    iput-object p4, v0, Lxq;->j:Landroid/os/Message;

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "msp_dialog_alert"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxn;->setContentView(I)V

    .line 91
    const-string v0, "left_button"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxn;->d:Landroid/widget/Button;

    .line 92
    const-string v0, "right_button"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxn;->e:Landroid/widget/Button;

    .line 93
    const-string v0, "dialog_split_v"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lxn;->f:Landroid/view/View;

    .line 94
    const-string v0, "dialog_title"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxn;->g:Landroid/widget/TextView;

    .line 95
    const-string v0, "dialog_message"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxn;->h:Landroid/widget/TextView;

    .line 97
    const-string v0, "dialog_divider"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 96
    invoke-virtual {p0, v0}, Lxn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lxn;->i:Landroid/widget/ImageView;

    .line 99
    const-string v0, "dialog_content_view"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 98
    invoke-virtual {p0, v0}, Lxn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lxn;->j:Landroid/widget/FrameLayout;

    .line 100
    const-string v0, "dialog_button_group"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lxn;->k:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lxn;->a:Lxq;

    iget-object v0, v0, Lxq;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lxn;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_0
    iget-object v0, p0, Lxn;->a:Lxq;

    iget-object v0, v0, Lxq;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lxn;->a:Lxq;

    iget-object v0, v0, Lxq;->d:Landroid/view/View;

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lxn;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lxn;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lxn;->a:Lxq;

    iget-object v1, v1, Lxq;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_2
    iget-object v0, p0, Lxn;->a:Lxq;

    iget-object v0, v0, Lxq;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxn;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lxn;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lxn;->a:Lxq;

    iget-object v1, v1, Lxq;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 105
    :cond_0
    iget-boolean v0, p0, Lxn;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lxn;->e:Landroid/widget/Button;

    :goto_3
    iget-boolean v1, p0, Lxn;->l:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lxn;->d:Landroid/widget/Button;

    :goto_4
    iget-object v5, p0, Lxn;->a:Lxq;

    iget-object v5, v5, Lxq;->e:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    :goto_5
    iget-object v5, p0, Lxn;->a:Lxq;

    iget-object v5, v5, Lxq;->f:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_6
    iget-object v5, p0, Lxn;->f:Landroid/view/View;

    if-le v0, v3, :cond_8

    move v1, v2

    :goto_7
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lxn;->k:Landroid/view/View;

    if-nez v0, :cond_9

    :goto_8
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lxn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lxn;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lxn;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lxn;->a:Lxq;

    iget-object v1, v1, Lxq;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 103
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lxn;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 105
    :cond_4
    iget-object v0, p0, Lxn;->d:Landroid/widget/Button;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lxn;->e:Landroid/widget/Button;

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lxn;->a:Lxq;

    iget-object v5, v5, Lxq;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lxn;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lxn;->a:Lxq;

    iget-object v5, v5, Lxq;->i:Landroid/os/Message;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move v0, v3

    goto :goto_5

    :cond_7
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lxn;->a:Lxq;

    iget-object v5, v5, Lxq;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lxn;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lxn;->a:Lxq;

    iget-object v5, v5, Lxq;->j:Landroid/os/Message;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v1, v4

    goto :goto_7

    :cond_9
    move v4, v2

    goto :goto_8
.end method
