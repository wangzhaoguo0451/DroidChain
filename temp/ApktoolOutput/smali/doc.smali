.class public final Ldoc;
.super Lhic;
.source "HistoryVersionSubtitlePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhic;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    const v0, 0x7f0c0057

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 27
    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 30
    :goto_0
    invoke-virtual {p0}, Ldoc;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 31
    new-instance v2, Ldoe;

    invoke-direct {v2, v0, p1}, Ldoe;-><init>(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 33
    new-instance v1, Ldod;

    invoke-direct {v1, p1}, Ldod;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 44
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
