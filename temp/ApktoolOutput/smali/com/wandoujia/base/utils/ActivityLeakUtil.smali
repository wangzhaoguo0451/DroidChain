.class public Lcom/wandoujia/base/utils/ActivityLeakUtil;
.super Ljava/lang/Object;
.source "ActivityLeakUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixInputMethodManagerLeak(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 21
    if-nez p0, :cond_1

    .line 54
    :cond_0
    return-void

    .line 25
    :cond_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    if-eqz v0, :cond_0

    .line 31
    new-array v3, v6, [Ljava/lang/String;

    const-string v2, "mCurRootView"

    aput-object v2, v3, v1

    const-string v2, "mServedView"

    aput-object v2, v3, v4

    const/4 v2, 0x2

    const-string v4, "mNextServedView"

    aput-object v4, v3, v2

    move v2, v1

    .line 32
    :goto_0
    if-ge v2, v6, :cond_0

    .line 33
    aget-object v1, v3, v2

    .line 35
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_3

    .line 41
    check-cast v1, Landroid/view/View;

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_3
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
