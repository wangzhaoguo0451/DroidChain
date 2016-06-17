.class public final Lcom/unipay/unipay_sdk/UniPay;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/unipay/unipay_sdk/UniPay;

.field private static o:I


# instance fields
.field a:Ljava/lang/Runnable;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/unipay/beans/PayValueBean;

.field private i:Lcom/unipay/beans/GameBaseBean;

.field private j:Landroid/os/Handler;

.field private k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

.field private l:Landroid/content/IntentFilter;

.field private m:Lchh;

.field private n:Lchl;

.field private p:Lcgh;

.field private q:Lcgn;

.field private r:Lcgp;

.field private s:Lcgr;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->o:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->c:Z

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->e:Z

    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->f:Z

    new-instance v0, Lcgr;

    invoke-direct {v0}, Lcgr;-><init>()V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->s:Lcgr;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->v:Ljava/lang/String;

    new-instance v0, Lchi;

    invoke-direct {v0}, Lchi;-><init>()V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Ljava/io/InputStream;)Lchr;
    .locals 1

    invoke-static {p0}, Lcom/unipay/unipay_sdk/UniPay;->b(Ljava/io/InputStream;)Lchr;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/unipay/unipay_sdk/UniPay;
    .locals 1

    sget-object v0, Lcom/unipay/unipay_sdk/UniPay;->b:Lcom/unipay/unipay_sdk/UniPay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v0}, Lcom/unipay/unipay_sdk/UniPay;-><init>()V

    sput-object v0, Lcom/unipay/unipay_sdk/UniPay;->b:Lcom/unipay/unipay_sdk/UniPay;

    :cond_0
    sget-object v0, Lcom/unipay/unipay_sdk/UniPay;->b:Lcom/unipay/unipay_sdk/UniPay;

    return-object v0
.end method

.method private a(ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string v0, "isms2"

    :goto_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.android.internal.telephony.ISms$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendText"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    const-string v0, "isms"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "\u7528\u6237\u9274\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5..."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    invoke-virtual {v0}, Lchh;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    invoke-virtual {v0}, Lchl;->cancel()V

    :cond_2
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->h()V

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->h()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    invoke-virtual {v0}, Lchl;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    :cond_0
    invoke-static {}, Lcgk;->a()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {}, Lcgz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcgz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[paycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[paycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "648"

    const-string v2, "\u51c6\u5907\u53d1\u9001\u77ed\u4fe1"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lchl;

    invoke-direct {v0}, Lchl;-><init>()V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    new-instance v0, Lchh;

    invoke-direct {v0, p0}, Lchh;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    invoke-virtual {v0}, Lchl;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    invoke-virtual {v0}, Lchh;->start()Landroid/os/CountDownTimer;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const/high16 v2, 0x4000

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcha;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v0, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v4, p2}, Lcom/unipay/unipay_sdk/UniPay;->a(ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    invoke-virtual {v0}, Lchh;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    invoke-virtual {v0}, Lchl;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "633"

    const-string v2, "\u53d1\u9001\u77ed\u4fe1\u5f02\u5e38"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u53d1\u9001\u77ed\u4fe1\u5f02\u5e38"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v2}, Lcha;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v0, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v4, p2}, Lcom/unipay/unipay_sdk/UniPay;->a(ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Lcha;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    if-eqz v2, :cond_5

    new-instance v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v0, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v4, p2}, Lcom/unipay/unipay_sdk/UniPay;->a(ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x1

    invoke-static {v2}, Lcha;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    if-eqz v2, :cond_6

    new-instance v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v0, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v4, p2}, Lcom/unipay/unipay_sdk/UniPay;->a(ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v2}, Lcha;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcha;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v2, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v2}, Lcha;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcha;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    if-eqz v2, :cond_8

    new-instance v2, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {v2, p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    iput-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v5, p0, Lcom/unipay/unipay_sdk/UniPay;->l:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    invoke-virtual {v0}, Lchh;->cancel()V

    :cond_9
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    invoke-virtual {v0}, Lchl;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public static synthetic b()I
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->o:I

    return v0
.end method

.method private static b(Ljava/io/InputStream;)Lchr;
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x400

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, v0, [B

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    :try_start_0
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content.length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ld;->f([B)Lchr;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    move-object p0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz p0, :cond_2

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_6
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->h()V

    invoke-static {}, Lcgk;->a()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcgz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcgz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[paycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[paycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static synthetic b(Lcom/unipay/unipay_sdk/UniPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->c:Z

    return v0
.end method

.method public static synthetic c()I
    .locals 1

    sget v0, Lcom/unipay/unipay_sdk/UniPay;->o:I

    return v0
.end method

.method public static synthetic c(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->g()V

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->s:Lcgr;

    iget-object v1, v0, Lcgr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, v0, Lcgr;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->s:Lcgr;

    const-string v1, "imsi"

    invoke-static {}, Lcgz;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->q:Lcgn;

    sget-object v2, Lcgz;->a:Ljava/lang/String;

    const-string v4, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->s:Lcgr;

    new-instance v5, Lche;

    invoke-direct {v5, p0}, Lche;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    new-instance v0, Lcgs;

    invoke-direct/range {v0 .. v5}, Lcgs;-><init>(Lcgn;Ljava/lang/String;Lcgr;Ljava/lang/String;Lcgo;)V

    invoke-virtual {v0}, Lcgs;->start()V

    return-void
.end method

.method public static synthetic d(Lcom/unipay/unipay_sdk/UniPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/unipay/unipay_sdk/UniPay;)Lchh;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->m:Lchh;

    return-object v0
.end method

.method private e()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Lcha;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcha;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v2}, Lcha;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcha;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private f()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcgz;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lchk;

    invoke-direct {v2, p0}, Lchk;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcha;->b(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcha;->b(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v2}, Lcha;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcha;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static synthetic f(Lcom/unipay/unipay_sdk/UniPay;)Lchl;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->n:Lchl;

    return-object v0
.end method

.method private g()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lchb;->a()Lchb;

    move-result-object v3

    iget-object v3, v3, Lchb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lchb;->a()Lchb;

    move-result-object v4

    iget-object v4, v4, Lchb;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getPrmCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcgz;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Lcom/unipay/tools/MyApplication;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcgz;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v1}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZTEos10"

    invoke-static {v0, v1}, Lcgc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "10655198003"

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "com.unipay.sms_action"

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "com.unipay.vac_action"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static synthetic g(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->h()V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->w:Lcho;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->w:Lcho;

    invoke-virtual {v0}, Lcho;->cancel()V

    const/4 v0, 0x0

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->w:Lcho;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 4

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->h()V

    invoke-static {}, Lcgk;->a()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "601"

    const-string v2, "\u652f\u4ed8\u8bf7\u6c42\u5df2\u63d0\u4ea4\uff01"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcgz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcgz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u8bf7\u6c42\u5df2\u63d0\u4ea4\uff01[paycode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/unipay/unipay_sdk/UniPay;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u8bf7\u6c42\u5df2\u63d0\u4ea4\uff01[paycode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static synthetic i(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->k:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    return-object v0
.end method

.method private i()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->u:Ljava/lang/String;

    invoke-static {}, Lcgz;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->t:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->t:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->u:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->u:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->v:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->v:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcha;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Lcha;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Lcha;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-static {v0}, Lcha;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcha;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v0}, Lcha;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    invoke-static {v0}, Lcha;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-static {v0}, Lcha;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    invoke-static {}, Lcgz;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcha;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_e
    move v0, v2

    goto/16 :goto_0
.end method

.method public static synthetic j(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lchp;

    invoke-direct {v1, p0}, Lchp;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/unipay/beans/GameBaseBean;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$payType;Landroid/os/Handler;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    iput-object p2, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-static {p2}, Lcgz;->a(Lcom/unipay/beans/GameBaseBean;)V

    invoke-static {p3}, Lcgz;->a(Lcom/unipay/beans/PayValueBean;)V

    iput-boolean v1, p0, Lcom/unipay/unipay_sdk/UniPay;->e:Z

    iput-object p5, p0, Lcom/unipay/unipay_sdk/UniPay;->j:Landroid/os/Handler;

    sget-object v0, Lcom/unipay/unipay_sdk/UniPay$payType;->SMS:Lcom/unipay/unipay_sdk/UniPay$payType;

    if-ne p4, v0, :cond_2

    iput-boolean v1, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    iput-boolean v2, p0, Lcom/unipay/unipay_sdk/UniPay;->c:Z

    const-string v0, "21"

    invoke-static {v0}, Lcgz;->a(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcgy;

    invoke-direct {v0}, Lcgy;-><init>()V

    new-instance v0, Lcgh;

    invoke-direct {v0, p1}, Lcgh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->p:Lcgh;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->p:Lcgh;

    invoke-virtual {v0, v1}, Lcgh;->a(Z)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->d(Ljava/lang/String;)V

    new-instance v0, Lcgp;

    invoke-direct {v0}, Lcgp;-><init>()V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->r:Lcgp;

    new-instance v0, Lcgn;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->r:Lcgp;

    invoke-direct {v0, v3}, Lcgn;-><init>(Lcgp;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->q:Lcgn;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v3, "604"

    const-string v4, "\u652f\u4ed8\u5f00\u59cb"

    const-string v5, "true"

    invoke-static {v0, v3, v4, v5}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->f:Z

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcha;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Lcha;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->d()V

    :cond_1
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->c:Z

    if-eqz v0, :cond_9

    const-string v0, "\u652f\u4ed8\u65b9\u5f0f\u8bbe\u7f6e\u9519\u8bef!"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    iput-boolean v1, p0, Lcom/unipay/unipay_sdk/UniPay;->c:Z

    const-string v0, "22"

    invoke-static {v0}, Lcgz;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcha;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lcha;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lcha;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lcha;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lcha;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcha;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->f:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->c:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "621"

    const-string v2, "\u53c2\u6570\u9519\u8bef!(\u975e\u8054\u7f51\u6e38\u620f\u4e0d\u652f\u6301\u5305\u6708\u4e1a\u52a1)"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u53c2\u6570\u8bbe\u7f6e\u9519\u8bef\uff01(\u975e\u8054\u7f51\u6e38\u620f\u4e0d\u652f\u6301\u5305\u6708\u4e1a\u52a1)"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->f:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->e()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "622"

    const-string v2, "\u975e\u8054\u901a\u5361\u4e0d\u652f\u6301\u5305\u6708\u4e1a\u52a1"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u975e\u8054\u901a\u5361\u4e0d\u652f\u6301\u5305\u6708\u4e1a\u52a1\uff01"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getMoney()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x42c8

    cmpl-float v0, v0, v3

    if-lez v0, :cond_d

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->f:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_4
    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "623"

    const-string v2, "VAC\u652f\u4ed8\u91d1\u989d\u8d85\u989d"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VAC\u652f\u4ed8\u91d1\u989d\u6709\u8bef\uff01"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    move v0, v2

    goto :goto_4

    :cond_e
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->e:Z

    if-eqz v0, :cond_1f

    sget v0, Lcom/unipay/unipay_sdk/UniPay;->o:I

    if-gtz v0, :cond_1e

    sget v0, Lcom/unipay/unipay_sdk/UniPay;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->o:I

    new-instance v0, Lcho;

    invoke-direct {v0}, Lcho;-><init>()V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->w:Lcho;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->w:Lcho;

    invoke-virtual {v0}, Lcho;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    if-nez v0, :cond_12

    move v0, v2

    :goto_5
    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, ""

    iget-object v3, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v3}, Lcha;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    invoke-static {v0}, Lcha;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->c:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcha;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->h:Lcom/unipay/beans/PayValueBean;

    invoke-virtual {v0}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_10
    move v1, v2

    :cond_11
    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->f()I

    move-result v0

    if-ne v0, v6, :cond_16

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->d()V

    goto/16 :goto_3

    :cond_12
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getPrmCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    move v0, v2

    goto :goto_5

    :cond_14
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getChannelid()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->i:Lcom/unipay/beans/GameBaseBean;

    invoke-virtual {v0}, Lcom/unipay/beans/GameBaseBean;->getChannelid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcgz;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_5

    :cond_16
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "636"

    const-string v2, "\u8bf7\u63d2\u5165\u8054\u901a\u5361\u652f\u4ed8"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u8bf7\u63d2\u5165\u8054\u901a\u5361\u652f\u4ed8"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "637"

    const-string v2, "\u8bdd\u8d39\u8ba1\u8d39\u6a21\u5f0f\u4e0d\u6b63\u786e"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u8bdd\u8d39\u8ba1\u8d39\u6a21\u5f0f\u4e0d\u6b63\u786e"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "620"

    const-string v2, "\u8ba2\u5355\u53f7\u683c\u5f0f\u9519\u8bef"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u8ba2\u5355\u53f7\u683c\u5f0f\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_19
    iget-boolean v0, p0, Lcom/unipay/unipay_sdk/UniPay;->d:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lcgz;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->f()I

    move-result v0

    if-ne v0, v6, :cond_1a

    :try_start_0
    invoke-direct {p0}, Lcom/unipay/unipay_sdk/UniPay;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1a
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "635"

    const-string v2, "\u65e0\u6cd5\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u6682\u4e0d\u652f\u6301\u975e\u8054\u901a"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1b
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "635"

    const-string v2, "\u65e0\u6cd5\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u65e0\u6cd5\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1c
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "617"

    const-string v2, "\u4e0d\u652f\u6301\u77ed\u4ee3\u79bb\u7ebf\u652f\u4ed8"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u652f\u4ed8\u9700\u8981\u8054\u7f51"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1d
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "617"

    const-string v2, "\u914d\u7f6e\u6587\u4ef6\u9519\u8bef"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u914d\u7f6e\u6587\u4ef6\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1e
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "626"

    const-string v3, "15\u79d2\u4e4b\u5185\u65e0\u6cd5\u91cd\u590d\u53d1\u8d77\u652f\u4ed8"

    const-string v4, "true"

    invoke-static {v0, v1, v3, v4}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "15\u79d2\u4e4b\u5185\u65e0\u6cd5\u91cd\u590d\u53d1\u8d77\u652f\u4ed8"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_1f
    iget-object v0, p0, Lcom/unipay/unipay_sdk/UniPay;->g:Landroid/content/Context;

    const-string v1, "627"

    const-string v2, "\u6ca1\u6709\u521d\u59cb\u5316SDK"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDK\u521d\u59cb\u5316\u672a\u5b8c\u6210"

    invoke-direct {p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
