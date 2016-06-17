.class public final Leyi;
.super Ljava/lang/Object;
.source "CleanNotificationHelper.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "app_launcher_clean"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Leyi;->a:I

    return-void
.end method

.method private static varargs a(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, ""

    .line 101
    :cond_0
    return-object v0

    .line 92
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move v1, v2

    .line 94
    :goto_0
    if-gtz v1, :cond_0

    aget-object v4, p2, v2

    .line 95
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 39
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0170

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Leyi;->a(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 46
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e016c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/wandoujia/p4/app_launcher/clean/notification/CleanNotificationService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const-string v1, "CLEAN_MEMORY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Leyi;->a:I

    const/high16 v5, 0x800

    invoke-static {v1, v3, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 54
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>()V

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    const-string v1, "app_launcher"

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->NOTIFICATION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    const-string v1, "push_low_raw"

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PUSH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v1, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 64
    invoke-static {}, Leny;->b()Leny;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 66
    :try_start_0
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v0

    sget v1, Leyi;->a:I

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Ldjv;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method
