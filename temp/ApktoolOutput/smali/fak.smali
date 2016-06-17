.class public Lfak;
.super Ljava/lang/Object;
.source "ALIconUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lfak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lezz;->a()Lezz;

    move-result-object v0

    iget-object v0, v0, Lezz;->a:Landroid/os/Handler;

    new-instance v1, Lfal;

    invoke-direct {v1, p0}, Lfal;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public static a()Z
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lfak;->g()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v1

    const-string v2, "key_icon_app_hash"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/base/utils/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_remind_icon"

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v1, "key_remind_icon"

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 106
    invoke-static {v2}, Lfak;->a(Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public static c()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not run on UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 172
    const/4 v1, 0x0

    .line 174
    :try_start_0
    new-instance v3, Ljava/net/URL;

    sget-object v0, Lfak;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    if-nez v0, :cond_1

    .line 181
    const v0, 0x7f0200c8

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic d()V
    .locals 5

    .prologue
    .line 33
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfak;->h()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lfaj;

    invoke-direct {v2}, Lfaj;-><init>()V

    invoke-static {v1}, Lfaj;->a(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "wdj://app_launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "launch_from"

    const-string v4, "shortcut"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "launch_keyword"

    const-string v4, "app_launcher"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0200c7

    invoke-static {v0, v1, v3, v2}, Lehv;->a(Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/content/Intent;)Z

    invoke-static {}, Lfam;->b()V

    const-string v0, "app_launcher"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v2, "create_shortcut_icon"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lfak;->f()V

    return-void
.end method

.method static synthetic e()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfaj;

    invoke-direct {v1}, Lfaj;-><init>()V

    invoke-static {}, Lfak;->h()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lfaj;->a(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lehv;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    invoke-static {}, Lfak;->f()V

    const-string v0, "app_launcher"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v2, "update_shortcut_icon"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lfak;->g()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v1

    const-string v2, "key_icon_app_hash"

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 90
    return-void
.end method

.method private static g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-static {}, Lfak;->h()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_3

    .line 123
    iget-object v0, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->intentElemList:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->intentElemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    .line 125
    iget-object v4, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lfak;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->icons:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Icons;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Icons;->px256:Ljava/lang/String;

    sput-object v0, Lfak;->a:Ljava/lang/String;

    .line 132
    :cond_1
    iget-object v0, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->appsElemList:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    iget-object v0, v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->appsElemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    .line 134
    iget-object v3, v0, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    .line 135
    invoke-static {v3}, Lfak;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    .line 140
    :cond_3
    return-object v1
.end method
