.class public final Lcom/unionpay/uppay/PayActivityEx;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static e:I


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mpay/views/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/unionpay/mpay/views/j;

.field private c:Lcfy;

.field private d:Lcem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "entryex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/unionpay/uppay/PayActivityEx;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->b:Lcom/unionpay/mpay/views/j;

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->c:Lcfy;

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->d:Lcem;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->c:Lcfy;

    iget-object v0, v0, Lcfy;->a:Lcfz;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-class v1, Lcom/unionpay/mpay/utils/UPPayEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->c:Lcfy;

    iget-object v0, v0, Lcfy;->b:Lcom/unionpay/mpay/utils/UPPayEngine;

    goto :goto_0

    :cond_2
    const-class v1, Lcem;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->d:Lcem;

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->b:Lcom/unionpay/mpay/views/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->b:Lcom/unionpay/mpay/views/j;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/j;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->b:Lcom/unionpay/mpay/views/j;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lccg;->a()V

    invoke-static {p0}, Lccd;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    new-instance v0, Lcfy;

    invoke-direct {v0, p0}, Lcfy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->c:Lcfy;

    new-instance v0, Lcem;

    invoke-direct {v0, p0, p0}, Lcem;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->d:Lcem;

    invoke-virtual {p0, v1}, Lcom/unionpay/uppay/PayActivityEx;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/unionpay/mpay/views/j;

    invoke-direct {v0, p0}, Lcom/unionpay/mpay/views/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->b:Lcom/unionpay/mpay/views/j;

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->b:Lcom/unionpay/mpay/views/j;

    invoke-virtual {p0, v0}, Lcom/unionpay/uppay/PayActivityEx;->setContentView(Landroid/view/View;)V

    sget v0, Lcom/unionpay/uppay/PayActivityEx;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unionpay/uppay/PayActivityEx;->e:I

    return-void
.end method

.method protected final onDestroy()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v5, p0, Lcom/unionpay/uppay/PayActivityEx;->b:Lcom/unionpay/mpay/views/j;

    sget v0, Lcom/unionpay/uppay/PayActivityEx;->e:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/unionpay/uppay/PayActivityEx;->e:I

    if-nez v0, :cond_2

    invoke-static {p0}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v1

    iget-object v0, v1, Lccn;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lccn;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput-object v5, Lccn;->b:Lccn;

    :cond_2
    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->c:Lcfy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->c:Lcfy;

    iget-object v0, v0, Lcfy;->a:Lcfz;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->c:Lcfy;

    iget-object v0, v0, Lcfy;->a:Lcfz;

    iget-object v0, v0, Lcfz;->Z:Lcfg;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->c:Lcfy;

    iget-object v0, v0, Lcfy;->a:Lcfz;

    iget-object v0, v0, Lcfz;->Z:Lcfg;

    iget-object v1, v0, Lcfg;->d:Lcfq;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcfg;->d:Lcfq;

    iget-object v2, v1, Lcfq;->b:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.unionpay.mobile.tsm.PBOCService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, v1, Lcfq;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    iget-object v1, v0, Lcfg;->f:Lcfv;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcfg;->f:Lcfv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " mSEService = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcfv;->c()V

    iget-object v2, v1, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->shutdown()V

    :cond_4
    iput-object v5, v0, Lcfg;->f:Lcfv;

    :cond_5
    const/4 v1, 0x0

    iput v1, v0, Lcfg;->a:I

    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/views/b;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/b;->c()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->d:Lcem;

    invoke-virtual {v0}, Lcem;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivityEx;->d:Lcem;

    iget-object v1, v0, Lcem;->a:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    iget-object v0, v0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
