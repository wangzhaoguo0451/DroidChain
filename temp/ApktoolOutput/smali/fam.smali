.class public final Lfam;
.super Ljava/lang/Object;
.source "ALLogUtils.java"


# static fields
.field private static a:Ljava/lang/Integer;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Integer;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const v0, 0x5adb471

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfam;->a:Ljava/lang/Integer;

    .line 85
    const-string v0, "app_launcher:shortcut_exist"

    sput-object v0, Lfam;->b:Ljava/lang/String;

    .line 100
    const v0, 0x5adb472

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfam;->c:Ljava/lang/Integer;

    .line 101
    const-string v0, "app_launcher:shortcut_create"

    sput-object v0, Lfam;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SEARCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->TRIGGER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lfam;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->identity(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lfam;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 95
    invoke-static {}, Leny;->b()Leny;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 96
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    new-instance v1, Leoj;

    const-string v2, "applauncher/startpage"

    invoke-direct {v1, v2}, Leoj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Leny;->a(Landroid/view/View;Leoj;)Leny;

    .line 35
    return-void
.end method

.method public static a(Landroid/view/View;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    const-string v1, "app_launcher"

    invoke-virtual {v0, p0, v1}, Leny;->a(Landroid/view/View;Ljava/lang/String;)Leny;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;->APP:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->b(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 68
    const-string v0, "commonapp"

    .line 69
    invoke-interface {p1}, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;->a()Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;->Function:Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;

    if-ne v1, v2, :cond_0

    .line 70
    const-string v0, "commonfunction"

    .line 72
    :cond_0
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-interface {p1}, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lfam;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Leny;->a(Landroid/view/View;Ljava/lang/String;)Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3, p4}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->b(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SEARCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->TRIGGER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lfam;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->identity(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lfam;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 111
    invoke-static {}, Leny;->b()Leny;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 112
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "search_applauncher"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-static {p0, v1, v2, v3, v0}, Lfam;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static c(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "search_applauncher"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-static {p0, v1, v2, v3, v0}, Lfam;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static d(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "search_applauncher"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-static {p0, v1, v2, v3, v0}, Lfam;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 65
    return-void
.end method
