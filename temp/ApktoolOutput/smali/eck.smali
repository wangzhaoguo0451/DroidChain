.class public final Leck;
.super Ljava/lang/Object;
.source "GameExpandableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    iget-object v0, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;Z)Z

    .line 88
    invoke-static {v1}, Lg;->e(Z)V

    .line 89
    iget-object v0, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Z

    move-result v0

    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "folder_suggestion_show"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 90
    iget-object v0, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {v4}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V

    .line 96
    :goto_1
    const-string v0, "game_suggestion"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "show_suggestion"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a()V

    .line 110
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    iget-object v2, v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b:Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->a()V

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {v4}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->c(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V

    .line 106
    :goto_3
    const-string v0, "game_suggestion"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->CLOSE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "hide_suggestion"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto :goto_2

    .line 104
    :cond_3
    iget-object v0, p0, Leck;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b()V

    goto :goto_3
.end method
