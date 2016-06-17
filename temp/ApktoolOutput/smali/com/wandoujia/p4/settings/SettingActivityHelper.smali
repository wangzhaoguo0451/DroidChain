.class public final Lcom/wandoujia/p4/settings/SettingActivityHelper;
.super Ljava/lang/Object;
.source "SettingActivityHelper.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "selection_preference_key"

    sput-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Landroid/content/Intent;

    #getter for: Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->c:Ljava/lang/Class;
    invoke-static {p1}, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->access$000(Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    sget-object v1, Lcom/wandoujia/p4/settings/SettingActivityHelper;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
