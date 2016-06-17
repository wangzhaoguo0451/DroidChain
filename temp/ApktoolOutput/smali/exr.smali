.class public final Lexr;
.super Ljava/lang/Object;
.source "ALFunctionAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 6

    .prologue
    const/high16 v4, 0x1000

    const/4 v5, 0x0

    .line 32
    iget-object v0, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v1, v0

    .line 57
    :goto_1
    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->intentExtrasList:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 62
    iget-object v0, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->intentExtrasList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;

    .line 63
    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->value:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 65
    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 68
    const-string v3, "int"

    iget-object v4, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 69
    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 41
    :cond_3
    iget-object v1, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->componentPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->componentClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->componentPackage:Ljava/lang/String;

    iget-object v3, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v3, v3, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v3, v3, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->componentClass:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :goto_3
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v1, v0

    goto/16 :goto_1

    .line 50
    :cond_4
    iget-object v2, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->intent:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 70
    :cond_5
    const-string v3, "boolean"

    iget-object v4, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 71
    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 73
    :cond_6
    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->value:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 76
    :cond_7
    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;->value:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 80
    :cond_8
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0139

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v4, v4, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :try_start_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_4
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    iget-object v1, p0, Lexr;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    invoke-static {}, Ld;->z()Lfaf;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, v0, Lfaf;->a:Ljava/util/List;

    if-nez v2, :cond_a

    :cond_9
    new-instance v0, Lfaf;

    invoke-direct {v0}, Lfaf;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lfaf;->a:Ljava/util/List;

    :cond_a
    iget-object v2, v0, Lfaf;->a:Ljava/util/List;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v1

    const-string v2, "key_remind_function"

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putObject(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_b
    move-object v1, v0

    goto/16 :goto_1
.end method
