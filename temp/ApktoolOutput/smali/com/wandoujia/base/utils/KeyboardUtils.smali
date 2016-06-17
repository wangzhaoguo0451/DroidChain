.class public Lcom/wandoujia/base/utils/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideSoftInput(Landroid/view/View;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static showKeyBoard(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 21
    new-instance v0, Lcri;

    invoke-direct {v0, p0}, Lcri;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
