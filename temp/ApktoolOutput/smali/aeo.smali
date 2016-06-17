.class final Laeo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lael;


# direct methods
.method constructor <init>(Lael;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laeo;->a:Lael;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    packed-switch p2, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 111
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 110
    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 112
    :goto_1
    invoke-static {}, Ld;->g()V

    .line 113
    iget-object v2, p0, Laeo;->a:Lael;

    invoke-static {v2}, Lael;->c(Lael;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 110
    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
