.class public final Lcrk;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:I

.field private synthetic d:Landroid/content/Intent;

.field private synthetic e:Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcrk;->a:Landroid/content/Context;

    iput-object p2, p0, Lcrk;->b:Ljava/lang/String;

    iput p3, p0, Lcrk;->c:I

    iput-object p4, p0, Lcrk;->d:Landroid/content/Intent;

    iput-object p5, p0, Lcrk;->e:Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcrk;->a:Landroid/content/Context;

    iget-object v1, p0, Lcrk;->b:Ljava/lang/String;

    iget v2, p0, Lcrk;->c:I

    iget-object v3, p0, Lcrk;->d:Landroid/content/Intent;

    #calls: Lcom/wandoujia/base/utils/ShortcutUtils;->addShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/base/utils/ShortcutUtils;->access$000(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)Z

    .line 65
    iget-object v0, p0, Lcrk;->e:Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcrk;->e:Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;

    invoke-interface {v0}, Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;->onSuccess()V

    .line 68
    :cond_0
    return-void
.end method
