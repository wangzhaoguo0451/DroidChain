.class public final Lgbu;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/HashMap;

.field private synthetic b:Lcom/wandoujia/p4/settings/MainSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lgbu;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    iput-object p2, p0, Lgbu;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 335
    move-object v0, p1

    check-cast v0, Lmt;

    iget-object v0, v0, Lmt;->a:Lmn;

    iget-object v0, v0, Lmn;->e:Landroid/widget/ListView;

    .line 336
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 339
    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/Config;->a(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lgbu;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    const v1, 0x7f0e00e8

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    iget-object v1, p0, Lgbu;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    const-string v2, "setting_apk_download_location"

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 351
    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Lgbu;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 344
    invoke-static {v0}, Lcom/wandoujia/ripple_framework/Config;->a(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lgbu;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    const v2, 0x7f0e00eb

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
