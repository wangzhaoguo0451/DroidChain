.class public final Lcom/unionpay/mpay/views/j;
.super Lcom/unionpay/mpay/views/b;

# interfaces
.implements Lcom/unionpay/mpay/utils/n$a;


# instance fields
.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/ProgressBar;

.field private n:Ljava/lang/String;

.field private o:I

.field private volatile p:I

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mpay/views/j;->m:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mpay/views/j;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mpay/views/j;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mpay/views/j;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mpay/views/j;->q:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mpay/views/j;->l:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mpay/views/j;->f:I

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/j;->d()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    invoke-static {v0, v1}, Lj;->a(Landroid/content/Intent;Lcfz;)Z

    move-result v1

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    new-instance v2, Lcfg;

    iget-object v3, p0, Lcom/unionpay/mpay/views/j;->d:Landroid/content/Context;

    new-instance v4, Lcdx;

    invoke-direct {v4, p0}, Lcdx;-><init>(Lcom/unionpay/mpay/views/j;)V

    const-string v5, "00"

    iget-object v6, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v6, v6, Lcfz;->x:Lcga;

    iget-object v6, v6, Lcga;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcfg;-><init>(Landroid/content/Context;Lcom/unionpay/pboc/engine/a;Z)V

    iput-object v2, v0, Lcfz;->Z:Lcfg;

    iget-object v2, p0, Lcom/unionpay/mpay/views/j;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const/4 v0, 0x0

    iget-object v3, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    iget-object v3, v3, Lcfz;->x:Lcga;

    iget-object v3, v3, Lcga;->c:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->getServerUrl(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcck;

    invoke-direct {v3, v0}, Lcck;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v2, v2, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->c:Ljava/lang/String;

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/unionpay/mpay/views/j;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v3, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v3, v3, Lcfz;->x:Lcga;

    iget-boolean v3, v3, Lcga;->d:Z

    invoke-virtual {v2, p1, v0, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->initJNIEnv(Landroid/app/Activity;ZZ)I

    move-result v0

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    const/4 v1, 0x1

    iput v1, p0, Lcom/unionpay/mpay/views/j;->o:I

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iput v0, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    iget-object v3, p0, Lcom/unionpay/mpay/views/j;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v4, v0, Lcfz;->a:Ljava/lang/String;

    iget v5, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    iget-object v1, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->c:Landroid/content/Context;

    const-string v6, "android"

    iget-object v2, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    const-string v0, "1"

    iget-object v7, v2, Lcfz;->x:Lcga;

    if-eqz v7, :cond_f

    iget-object v7, v2, Lcfz;->x:Lcga;

    iget v7, v7, Lcga;->a:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    iget-object v2, v2, Lcfz;->x:Lcga;

    iget v2, v2, Lcga;->a:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_f

    :cond_2
    const-string v0, "2"

    move-object v2, v0

    :goto_1
    iget-object v0, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    iget-object v7, v0, Lcfz;->b:Ljava/lang/String;

    const-string v8, "\"tn\":\"%s\",\"user\":\"%s\",\"locale\":\"%s\",\"terminal_version\":\"%s\",\"terminal_resolution\":\"%s\",\"os_name\":\"%s\",\"os_version\":\"%s\",\"device_model\":\"%s\",\"terminal_type\":\"%s\",\"appId\":\"%s\", \"uid\":\"%s\",\"mac\":\"%s\""

    const/16 v0, 0xc

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v9, v0

    const/4 v4, 0x1

    move-object v0, v1

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/unionpay/uppay/PayActivityEx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfz;

    iget-object v10, v0, Lcfz;->x:Lcga;

    iget v10, v10, Lcga;->a:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    iget-object v0, v0, Lcfz;->x:Lcga;

    iget-object v0, v0, Lcga;->g:Ljava/lang/String;

    :cond_3
    :goto_2
    aput-object v0, v9, v4

    const/4 v0, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v0

    const/4 v0, 0x3

    invoke-static {v1}, Ld;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v0

    const/4 v0, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lccd;->B:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "*"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v10, Lccd;->n:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v6, v9, v0

    const/4 v0, 0x6

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v0

    const/4 v0, 0x7

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v6, " "

    const-string v10, ""

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_4
    aput-object v4, v9, v0

    const/16 v0, 0x8

    aput-object v2, v9, v0

    const/16 v0, 0x9

    aput-object v7, v9, v0

    const/16 v0, 0xa

    invoke-static {v1}, Lj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v0

    const/16 v0, 0xb

    invoke-static {v1}, Ld;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->initMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v1, v0}, Lcck;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "secret"

    iget v2, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {v3, v2}, Lcom/unionpay/mpay/utils/UPPayEngine;->retrieveInitializeKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, v1, Lcck;->c:Ljava/util/HashMap;

    const-string v0, "init"

    invoke-virtual {v3, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iput-object p0, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v3, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    iget-object v3, v3, Lcfz;->x:Lcga;

    iget-object v3, v3, Lcga;->c:Ljava/lang/String;

    const-string v4, "02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_7
    iget-object v3, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    iget-object v3, v3, Lcfz;->x:Lcga;

    iget-object v3, v3, Lcga;->c:Ljava/lang/String;

    const-string v4, "98"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v0, 0x62

    goto/16 :goto_0

    :cond_8
    iget-object v3, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    iget-object v3, v3, Lcfz;->x:Lcga;

    iget-object v3, v3, Lcga;->c:Ljava/lang/String;

    const-string v4, "99"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x63

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v10, "/system/bin/su"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_c

    invoke-static {v1}, Ld;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    :cond_a
    invoke-static {v1}, Lj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :cond_c
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_d
    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mpay/views/j;->b(ILjava/lang/String;)V

    goto :goto_3

    :cond_e
    if-nez v1, :cond_5

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mpay/views/j;->b(ILjava/lang/String;)V

    goto :goto_3

    :cond_f
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/j;)I
    .locals 2

    iget v0, p0, Lcom/unionpay/mpay/views/j;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unionpay/mpay/views/j;->p:I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lcdv;

    invoke-direct {v1, p0, p3}, Lcdv;-><init>(Lcom/unionpay/mpay/views/j;Ljava/lang/String;)V

    new-instance v2, Lcdw;

    invoke-direct {v2, p0}, Lcdw;-><init>(Lcom/unionpay/mpay/views/j;)V

    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->b:Lcem;

    invoke-virtual {v0, v1, v2}, Lcem;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->I:Ljava/lang/String;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->J:Ljava/lang/String;

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->b:Lcem;

    invoke-virtual {v0, v1, v2}, Lcem;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->E:Ljava/lang/String;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->J:Ljava/lang/String;

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v0, v0, Lcfz;->x:Lcga;

    iput-object p2, v0, Lcga;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->m:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mpay/views/j;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/views/j;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/unionpay/mpay/views/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mpay/views/j;->m()V

    return-void
.end method

.method private final declared-synchronized m()V
    .locals 4

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showContentView() +++"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unionpay/mpay/views/j;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/unionpay/mpay/views/j;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "1"

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v1, v1, Lcfz;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->q:Ljava/util/List;

    iput-object v1, v0, Lcfz;->h:Ljava/util/List;

    :cond_1
    const-string v0, "0"

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v1, v1, Lcfz;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v0, v0, Lcfz;->Y:Ljava/lang/String;

    const-string v1, "fail"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v2, v2, Lcfz;->x:Lcga;

    iput-object v1, v2, Lcga;->e:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->m:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/views/j;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    const-string v0, "0"

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v1, v1, Lcfz;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->l:Ljava/util/List;

    iput-object v1, v0, Lcfz;->h:Ljava/util/List;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget v1, v0, Lcfz;->X:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->d()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->d()I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->l:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->q:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/j;->e(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(I[B)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/j;->g()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v4}, Lcom/unionpay/mpay/views/j;->b(ILjava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    if-nez v0, :cond_3

    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/unionpay/mpay/views/j;->b(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p2}, Ld;->e([B)Z

    move-result v0

    if-ne v0, v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UPPay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UPPayPluginEx.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/uppay/PayActivityEx;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v9}, Lcom/unionpay/mpay/views/j;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/unionpay/mpay/views/j;->o:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iput v2, p0, Lcom/unionpay/mpay/views/j;->o:I

    goto :goto_0

    :pswitch_0
    const-string v0, "secret"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sec_sign"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v3, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {v1, v3, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->setSessionKey(ILjava/lang/String;)V

    const-string v0, "upgrade_info"

    invoke-static {p1, v0}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v0, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unionpay/mpay/views/j;->n:Ljava/lang/String;

    const-string v1, "desc"

    invoke-static {v0, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "url"

    invoke-static {v0, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->n:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lcom/unionpay/mpay/views/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "title"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "init_button"

    invoke-static {p1, v1}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcfz;->e:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "order"

    invoke-static {p1, v1}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcfz;->c:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "risk_info"

    invoke-static {p1, v1}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcfz;->d:Lorg/json/JSONObject;

    const-string v0, "cards"

    invoke-static {p1, v0}, Lccx;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/j;->q:Ljava/util/List;

    :cond_2
    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v2}, Lccx;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lccx;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v9}, Lccx;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcfp;

    invoke-direct {v8, v6, v7, v0, v2}, Lcfp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->q:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "bank_url"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "input_info"

    invoke-static {p1, v1}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcfz;->k:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "account_info"

    invoke-static {p1, v1}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcfz;->m:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "other_card_info"

    invoke-static {p1, v1}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcfz;->n:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "user_id"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "trade_privilege"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    const-string v1, "upcard_msg"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->Y:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iput v2, v0, Lcfz;->X:I

    const-string v0, "upcard_support_type"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    iget-object v5, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    iget-object v5, v5, Lcfz;->W:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->a:Lcfz;

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcfz;->X:I

    :cond_4
    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v1, "sid"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    const-string v0, "uid"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->d:Landroid/content/Context;

    const-string v5, "UnionPayPluginEx.pref"

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "uid"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->n:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lcom/unionpay/mpay/views/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/j;->l()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "doErrHappended() +++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fail"

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mpay/views/j;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "doErrHappended() ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final d()V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0xe

    const/4 v6, -0x2

    const/4 v5, -0x1

    invoke-super {p0}, Lcom/unionpay/mpay/views/b;->d()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->c:Lccn;

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1, v5, v5}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lccd;->B:I

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/j;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/j;->c:Lccn;

    const/16 v3, 0x408

    invoke-virtual {v2, v3, v0, v5}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lccd;->h:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v0, 0x3e99999a

    sget v3, Lccd;->n:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, v2}, Lcom/unionpay/mpay/views/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/j;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010287

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/j;->m:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lccd;->c:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay/views/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lccd;->a:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/views/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/j;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x4160

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/j;->n:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/j;->h()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/unionpay/mpay/views/j;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unionpay/mpay/views/j;->p:I

    invoke-direct {p0}, Lcom/unionpay/mpay/views/j;->m()V

    goto :goto_0
.end method
