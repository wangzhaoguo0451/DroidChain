.class public Lfnt;
.super Lhow;
.source "CommunityTab.java"


# instance fields
.field private a:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/CharSequence;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lhow;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 36
    iput-object p2, p0, Lfnt;->e:Ljava/lang/CharSequence;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lfnt;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfnt;->a:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lfnt;->a:Landroid/view/View;

    const v1, 0x7f0c023d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfnt;->c:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lfnt;->a:Landroid/view/View;

    const v1, 0x7f0c037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfnt;->d:Landroid/widget/TextView;

    .line 65
    :cond_0
    iget-object v0, p0, Lfnt;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lfnt;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget v0, p0, Lfnt;->f:I

    if-lez v0, :cond_1

    .line 67
    iget-object v0, p0, Lfnt;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lfnt;->d:Landroid/widget/TextView;

    iget v1, p0, Lfnt;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lfnt;->a:Landroid/view/View;

    new-instance v1, Lfnu;

    invoke-direct {v1, p3, p2}, Lfnu;-><init>(Landroid/support/v4/view/ViewPager;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lfnt;->a:Landroid/view/View;

    return-object v0

    .line 70
    :cond_1
    iget-object v0, p0, Lfnt;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lfnt;->f:I

    .line 48
    iget-object v0, p0, Lfnt;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 49
    if-lez p1, :cond_1

    .line 50
    iget-object v0, p0, Lfnt;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lfnt;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lfnt;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
