.class public final Lgqn;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Lgxu;


# instance fields
.field private synthetic a:Lgqm;


# direct methods
.method public constructor <init>(Lgqm;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lgqn;->a:Lgqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 44
    iget-object v0, p0, Lgqn;->a:Lgqm;

    iget-object v0, v0, Lgqm;->b:Lmt;

    invoke-virtual {v0}, Lmt;->dismiss()V

    .line 45
    iget-object v0, p0, Lgqn;->a:Lgqm;

    new-instance v1, Lhoq;

    iget-object v2, v0, Lgqm;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lhoq;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lgqm;->a:Landroid/content/Context;

    const v3, 0x7f0e0357

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UDID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lgqm;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lgqm;->a:Landroid/content/Context;

    const v5, 0x7f0e0270

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lgqm;->a:Landroid/content/Context;

    const v5, 0x7f0e0694

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lgqm;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lgqm;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lgqm;->a:Landroid/content/Context;

    const v5, 0x7f0e066d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    iget-object v3, v0, Lgqm;->a:Landroid/content/Context;

    const v4, 0x7f0e0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lgqq;

    invoke-direct {v4, v2}, Lgqq;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3, v4}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    iget-object v0, v0, Lgqm;->a:Landroid/content/Context;

    const v2, 0x7f0e0162

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lgqp;

    invoke-direct {v2}, Lgqp;-><init>()V

    invoke-virtual {v1, v0, v2}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    .line 46
    return-void
.end method
