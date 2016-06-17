.class public final Lcrl;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/content/Intent;

.field private synthetic d:Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcrl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcrl;->b:Ljava/lang/String;

    iput-object p3, p0, Lcrl;->c:Landroid/content/Intent;

    iput-object p4, p0, Lcrl;->d:Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcrl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcrl;->b:Ljava/lang/String;

    iget-object v2, p0, Lcrl;->c:Landroid/content/Intent;

    #calls: Lcom/wandoujia/base/utils/ShortcutUtils;->removeShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/utils/ShortcutUtils;->access$100(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 83
    iget-object v0, p0, Lcrl;->d:Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcrl;->d:Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;

    invoke-interface {v0}, Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;->onSuccess()V

    .line 86
    :cond_0
    return-void
.end method
