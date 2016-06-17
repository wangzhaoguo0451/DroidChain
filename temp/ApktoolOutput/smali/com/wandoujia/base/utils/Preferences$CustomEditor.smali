.class public Lcom/wandoujia/base/utils/Preferences$CustomEditor;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 160
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 165
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    return-object p0
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    #calls: Lcom/wandoujia/base/utils/Preferences;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {p2}, Lcom/wandoujia/base/utils/Preferences;->access$000(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 192
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    return-object p0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    #calls: Lcom/wandoujia/base/utils/Preferences;->objectToString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p2}, Lcom/wandoujia/base/utils/Preferences;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 221
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 224
    :cond_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    return-object p0
.end method
