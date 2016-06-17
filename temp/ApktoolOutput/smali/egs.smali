.class final Legs;
.super Ljava/lang/Object;
.source "UninstallPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;

.field private synthetic b:Legr;


# direct methods
.method constructor <init>(Legr;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Legs;->b:Legr;

    iput-object p2, p0, Legs;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Legs;->b:Legr;

    iget-object v0, v0, Legr;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Legs;->b:Legr;

    iget v0, v0, Legr;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Legs;->b:Legr;

    iget v0, v0, Legr;->d:I

    invoke-static {p1, v0}, Ld;->a(Landroid/view/View;I)V

    .line 72
    :cond_0
    iget-object v0, p0, Legs;->b:Legr;

    iget-object v0, v0, Legr;->a:Ljava/lang/String;

    iget-object v1, p0, Legs;->b:Legr;

    iget-object v1, v1, Legr;->b:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {p1, v0, v1, v2}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    .line 73
    iget-object v0, p0, Legs;->b:Legr;

    iget-object v0, v0, Legr;->c:Ljava/lang/String;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "uninstall_app"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 76
    :cond_1
    new-instance v0, Leek;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Legs;->b:Legr;

    iget-object v2, v2, Legr;->a:Ljava/lang/String;

    iget-object v3, p0, Legs;->b:Legr;

    iget-object v3, v3, Legr;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Leek;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Leek;->execute()V

    .line 77
    iget-object v0, p0, Legs;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 78
    return-void
.end method
