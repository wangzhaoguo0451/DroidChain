.class public Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;
.super Landroid/widget/RelativeLayout;
.source "SuggestionView.java"

# interfaces
.implements Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;


# instance fields
.field private a:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

.field private b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    sget-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INIT:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->d:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    .line 36
    sget v0, Lcom/wandoujia/launcher_base/R$layout;->default_suggestion_view:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a(I)V

    .line 37
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;)Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->d:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->removeAllViews()V

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lehx;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->addView(Landroid/view/View;)V

    .line 42
    sget v0, Lcom/wandoujia/launcher_base/R$id;->stateful_icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    .line 43
    sget v0, Lcom/wandoujia/launcher_base/R$id;->text_title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->c:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/wandoujia/launcher_base/R$id;->double_icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    .line 45
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    sget v1, Lcom/wandoujia/launcher_base/R$drawable;->ic_launcher_download_small:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->setIconSmallByResource(I)V

    .line 46
    return-void
.end method

.method public getIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->getIconBig()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->d:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    return-object v0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    sget v1, Lcom/wandoujia/launcher_base/R$drawable;->game_icon_placehoder:I

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->a(Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public setLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    invoke-virtual {v0, p1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->setProgress(I)V

    .line 51
    return-void
.end method

.method public setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 55
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->d:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    if-ne p1, v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->d:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    .line 57
    sget-object v0, Lekn;->a:[I

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->d:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    invoke-virtual {v0, v4}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->setIconSmallVisible(Z)V

    goto :goto_0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->setIconSmallVisible(Z)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    invoke-virtual {v0, v4}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->DOWNLOADING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->setIconState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;)V

    .line 65
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->c:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->suggestion_state_downloading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 68
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    invoke-virtual {v0, v4}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->PAUSING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->setIconState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;)V

    .line 70
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->c:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->suggestion_state_pausing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 73
    :pswitch_3
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->c:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->suggestion_state_unzipping:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 76
    :pswitch_4
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->c:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->suggestion_state_installing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lekm;

    invoke-direct {v1, p0}, Lekm;-><init>(Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 86
    :pswitch_5
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->c:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->suggestion_state_ready:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 90
    :pswitch_6
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->e:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
