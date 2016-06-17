.class public final Leeh;
.super Ljava/lang/Object;
.source "RootPopWidget.java"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 22
    sput-object v0, Leeh;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->STORAGE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ordinal()I

    move-result v1

    sget v2, Lcom/wandoujia/launcher_base/R$string;->root_notification_installed_failed_container:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Leeh;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INCONSISTENT_CERTIFICATES:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ordinal()I

    move-result v1

    sget v2, Lcom/wandoujia/launcher_base/R$string;->root_notification_installed_failed_certi:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Leeh;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INSUFFICIENT_STORAGE:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ordinal()I

    move-result v1

    sget v2, Lcom/wandoujia/launcher_base/R$string;->root_notification_installed_failed_storage:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$string;->root_toast_installed_success:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Lejw;

    invoke-direct {v0, p0}, Lejw;-><init>(Landroid/content/Context;)V

    .line 145
    sget v1, Lcom/wandoujia/launcher_base/R$string;->uninstall_dialog_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lejw;->a(Ljava/lang/CharSequence;)Lejw;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/wandoujia/launcher_base/R$string;->history_apps_uninstall_dialog_title:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lejw;->b(Ljava/lang/CharSequence;)Lejw;

    .line 147
    sget v1, Lcom/wandoujia/launcher_base/R$string;->confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lejw;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lejw;

    .line 148
    sget v1, Lcom/wandoujia/launcher_base/R$string;->cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lejw;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lejw;

    .line 149
    invoke-virtual {v0}, Lejw;->b()Lejq;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_0
    sget v1, Lcom/wandoujia/launcher_base/R$string;->root_notification_installed_failed:I

    sget-object v0, Leeh;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 101
    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$string;->root_uninstall_success:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$string;->root_uninstall_failed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
