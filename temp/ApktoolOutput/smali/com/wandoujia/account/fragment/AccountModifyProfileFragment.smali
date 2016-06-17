.class public Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;
.super Lcom/wandoujia/account/fragment/AccountBaseFragment;
.source "AccountModifyProfileFragment.java"


# instance fields
.field private q:Ljava/lang/String;

.field private r:Lcom/wandoujia/account/dto/Platform;

.field private final s:Lclf;

.field private final t:Lcmg;

.field private u:Ljava/lang/String;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/EditText;

.field private x:Lcoe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;-><init>()V

    .line 75
    new-instance v0, Lclf;

    invoke-direct {v0, p0}, Lclf;-><init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->s:Lclf;

    .line 76
    new-instance v0, Lcjh;

    invoke-direct {v0, p0}, Lcjh;-><init>(Lcom/wandoujia/account/fragment/AccountBaseFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->t:Lcmg;

    .line 407
    new-instance v0, Lcoe;

    invoke-direct {v0, p0}, Lcoe;-><init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->x:Lcoe;

    .line 571
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Lcom/wandoujia/account/dto/Platform;)Lcom/wandoujia/account/dto/Platform;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->r:Lcom/wandoujia/account/dto/Platform;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_set_avatar:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/Phoenix2Util;->isPhoenix2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/wandoujia/account/R$array;->account_sdk_avatar_methods:I

    new-instance v2, Lcld;

    invoke-direct {v2, p0}, Lcld;-><init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void

    :cond_1
    sget v1, Lcom/wandoujia/account/R$array;->account_sdk_no_social_avatar_methods:I

    new-instance v2, Lcle;

    invoke-direct {v2, p0}, Lcle;-><init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_change_avatar:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->x:Lcoe;

    invoke-static {v0, p1, v1}, Lcnz;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcoe;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    if-eqz p2, :cond_1

    .line 120
    :try_start_0
    invoke-virtual {p2}, Lcom/wandoujia/account/dto/WandouResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_netop_network_error:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lckx;

    invoke-direct {v2}, Lckx;-><init>()V

    invoke-static {v1, v0, p1, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_netop_network_error:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcky;

    invoke-direct {v2}, Lcky;-><init>()V

    invoke-static {v0, v1, p1, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method public static b(Lcmm;)Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;
    .locals 4
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-direct {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string v2, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {p0}, Lcmm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a(Lcmm;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lcmg;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->t:Lcmg;

    return-object v0
.end method

.method public static synthetic d()Ldd;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 5
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "avatar"

    const-string v2, "jpg"

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->u:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lclg;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lclg;-><init>(Ljava/lang/String;Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lclg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 405
    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcnz;->b(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_avatar_upload_failed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic f(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lclf;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->s:Lclf;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e()V

    return-void
.end method

.method public static synthetic h(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lcom/wandoujia/account/dto/Platform;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->r:Lcom/wandoujia/account/dto/Platform;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a()V

    .line 151
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a:Landroid/view/View;

    sget v2, Lcom/wandoujia/account/R$id;->avatar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->v:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a:Landroid/view/View;

    sget v2, Lcom/wandoujia/account/R$id;->account_nick:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->w:Landroid/widget/EditText;

    .line 153
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a:Landroid/view/View;

    sget v2, Lcom/wandoujia/account/R$id;->account_confirm:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a:Landroid/view/View;

    sget v3, Lcom/wandoujia/account/R$id;->modify_nick:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lckz;

    invoke-direct {v3, p0}, Lckz;-><init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->v:Landroid/widget/ImageView;

    new-instance v3, Lcla;

    invoke-direct {v3, p0}, Lcla;-><init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v2, Lclb;

    invoke-direct {v2, p0}, Lclb;-><init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 197
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xb

    if-eq v0, v4, :cond_3

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 198
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 201
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    .line 202
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 210
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp_avatar.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->q:Ljava/lang/String;

    .line 212
    return-void

    :cond_3
    move v0, v1

    .line 197
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    const/4 v4, 0x3

    if-lt v0, v4, :cond_4

    const/4 v4, 0x6

    if-le v0, v4, :cond_6

    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    .line 207
    :cond_8
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method protected final b(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 532
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_complete_failure:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 533
    return-void
.end method

.method protected final c()V
    .locals 3

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_netop_network_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 528
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "account.intent.action.MODIFY_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 522
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 225
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    iget-object v0, v0, Lcmm;->a:Lcii;

    iget-object v0, v0, Lcii;->b:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    iget-object v0, v0, Lcmm;->a:Lcii;

    iget-object v0, v0, Lcii;->b:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a(IILandroid/content/Intent;)V

    .line 314
    :cond_1
    :goto_1
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcnz;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0

    .line 237
    :pswitch_1
    if-eqz p3, :cond_1

    .line 240
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 243
    if-eqz v0, :cond_0

    .line 244
    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_change_avatar:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->b(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->x:Lcoe;

    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcoe;)V

    goto :goto_0

    .line 250
    :pswitch_2
    if-eqz p3, :cond_1

    .line 256
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 257
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 258
    if-eqz v0, :cond_9

    .line 259
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_4

    .line 277
    :goto_2
    if-nez v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_avatar_upload_failed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 262
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 263
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 264
    :try_start_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_4

    .line 265
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 266
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v3

    .line 267
    :try_start_6
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    const-string v0, "content"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4}, Ld;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcnz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v2, v3

    :goto_3
    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 278
    goto :goto_2

    .line 288
    :cond_3
    :try_start_7
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v0

    .line 291
    :try_start_8
    invoke-static {v0}, Lcnz;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v0

    .line 294
    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 302
    :cond_4
    if-eqz v0, :cond_0

    .line 303
    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_change_avatar:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->b(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->x:Lcoe;

    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcoe;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v0, v1

    goto/16 :goto_2

    :catch_4
    move-exception v2

    move-object v2, v1

    goto/16 :goto_2

    :catch_5
    move-exception v3

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v0, v3

    goto/16 :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v0, v2

    move-object v2, v3

    goto :goto_3

    :cond_7
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :cond_8
    move-object v0, v1

    move-object v2, v1

    goto :goto_3

    :cond_9
    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_modify_profile:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a:Landroid/view/View;

    .line 217
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a()V

    .line 218
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e()V

    .line 219
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a:Landroid/view/View;

    return-object v0
.end method
