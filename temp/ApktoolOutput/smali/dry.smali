.class final Ldry;
.super Ljava/lang/Object;
.source "ClearQueryHistoryPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/jupiter/JupiterApplication;->b:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;

    sget-object v1, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)V

    .line 38
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e048f

    sget v2, Ldxa;->a:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 41
    return-void
.end method
