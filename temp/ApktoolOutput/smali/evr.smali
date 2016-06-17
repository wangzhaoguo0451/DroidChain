.class public final Levr;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v0, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->a(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levs;

    .line 101
    iget-boolean v3, v0, Levs;->c:Z

    if-eqz v3, :cond_0

    .line 102
    iget v0, v0, Levs;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->b(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    iget-object v1, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    const v2, 0x7f0e0125

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 126
    :goto_1
    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->b(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    iget-object v0, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->b(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3
    new-instance v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;-><init>(Levr;)V

    .line 113
    const-string v0, "wandoujia"

    iput-object v0, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->account:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->c(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->title:Ljava/lang/String;

    iput-object v0, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->packagename:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->c(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->md5:Ljava/lang/String;

    iput-object v0, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->filemd5:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->c(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    move-result-object v0

    iget-wide v4, v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->vc:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->vcode:Ljava/lang/String;

    .line 117
    const-string v0, "192.168.0.1"

    iput-object v0, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->clientip:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->c(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->appType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->appchannel:Ljava/lang/String;

    .line 122
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->descr:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Lgcy;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->reporttime:Ljava/lang/String;

    .line 124
    new-instance v0, Levv;

    iget-object v1, p0, Levr;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-direct {v0, v1, v6}, Levv;-><init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Levv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 118
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method
