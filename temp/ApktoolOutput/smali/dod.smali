.class final Ldod;
.super Ljava/lang/Object;
.source "HistoryVersionSubtitlePresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Ldod;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Ldod;->a:Lcom/wandoujia/ripple_framework/model/Model;

    const v1, 0x7f0c0057

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Ldod;->a:Lcom/wandoujia/ripple_framework/model/Model;

    const v1, 0x7f0c0057

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 42
    return-void
.end method
