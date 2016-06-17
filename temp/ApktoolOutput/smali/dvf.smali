.class public final Ldvf;
.super Ljava/lang/Object;
.source "JupiterToolbarMenuListener.java"

# interfaces
.implements Lrw;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/content/Context;

.field private c:Lcom/wandoujia/ripple_framework/model/Model;

.field private d:Ldic;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ldvf;->a:Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldvf;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 107
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    .line 115
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c050c

    const/4 v1, 0x0

    .line 43
    iput-object p1, p0, Ldvf;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 44
    if-eqz p1, :cond_1

    .line 45
    iget-object v0, p0, Ldvf;->d:Ldic;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ldvf;->d:Ldic;

    iput-object v1, v0, Ldic;->c:Lcom/wandoujia/ripple_framework/model/Model;

    iput-object v1, v0, Ldic;->d:Lgcd;

    iget-object v0, v0, Ldic;->e:Ldid;

    iput-object v1, v0, Ldid;->a:Ldic;

    .line 48
    :cond_0
    iget-object v0, p0, Ldvf;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v1, Ldic;

    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    iget-object v0, p0, Ldvf;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-direct {v1, v2, v0, p1}, Ldic;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/ActionMenuItemView;Lcom/wandoujia/ripple_framework/model/Model;)V

    iput-object v1, p0, Ldvf;->d:Ldic;

    .line 56
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 103
    :goto_0
    return v0

    .line 65
    :sswitch_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-static {v0, v2}, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;->a(Landroid/content/Context;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    .line 67
    iget-object v0, p0, Ldvf;->a:Landroid/view/View;

    const-string v2, "wdj://search/history"

    invoke-static {v0, v2}, Ldvf;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v0, v1

    .line 103
    goto :goto_0

    .line 71
    :sswitch_1
    iget-object v0, p0, Ldvf;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Ldvf;->b:Landroid/content/Context;

    iget-object v2, p0, Ldvf;->c:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iget-object v3, p0, Ldvf;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lgdk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    const-class v3, Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Ldvf;->a:Landroid/view/View;

    const-string v2, "wdj://settings"

    invoke-static {v0, v2}, Ldvf;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    const-class v3, Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Ldvf;->a:Landroid/view/View;

    const-string v2, "wdj://feedback"

    invoke-static {v0, v2}, Ldvf;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    const-class v3, Lcom/wandoujia/p4/netcheck/NetCheckActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 93
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    const-class v3, Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    iget-object v2, p0, Ldvf;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 97
    :sswitch_6
    iget-object v2, p0, Ldvf;->d:Ldic;

    iget-object v3, v2, Ldic;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v3, :cond_0

    iget-object v3, v2, Ldic;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v3}, Ldux;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v3

    iget-object v4, v2, Ldic;->b:Landroid/content/Context;

    iget-object v5, v2, Ldic;->d:Lgcd;

    invoke-virtual {v3, v4, v5}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->d(Landroid/content/Context;Lgcd;)V

    iget-object v3, v2, Ldic;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v2, v3, v0}, Ldic;->a(Landroid/view/View;Z)V

    :goto_2
    iget-object v2, v2, Ldic;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v3

    iget-object v4, v2, Ldic;->b:Landroid/content/Context;

    iget-object v5, v2, Ldic;->d:Lgcd;

    invoke-virtual {v3, v4, v5}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c(Landroid/content/Context;Lgcd;)V

    iget-object v3, v2, Ldic;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v2, v3, v1}, Ldic;->a(Landroid/view/View;Z)V

    goto :goto_2

    .line 61
    :sswitch_data_0
    .sparse-switch
        0x7f0c003f -> :sswitch_5
        0x7f0c0504 -> :sswitch_2
        0x7f0c050b -> :sswitch_1
        0x7f0c050c -> :sswitch_6
        0x7f0c050d -> :sswitch_0
        0x7f0c050f -> :sswitch_4
        0x7f0c0510 -> :sswitch_3
    .end sparse-switch
.end method
