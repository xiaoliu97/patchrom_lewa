.class public Lcom/lewa/cloud/ContactsSyncActivity;
.super Landroid/app/Activity;
.source "ContactsSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MSG_UPDATE_CONTACT_ALL:I = 0x0

.field public static final MSG_UPDATE_CONTACT_LOCAL:I = 0x1

.field public static final MSG_UPDATE_CONTACT_REMOTE:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

.field private static mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;


# instance fields
.field private MSyncSmallIcon:Landroid/graphics/drawable/Drawable;

.field private mAttentionInfo:Landroid/widget/TextView;

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mContactLocal:I

.field private mContactRemote:I

.field private mHelpInfo:Landroid/widget/TextView;

.field private mLastSyncInfo:Landroid/widget/TextView;

.field private mLocalInfo:Landroid/widget/TextView;

.field private mLocalNum:I

.field private mLocalTitle:Landroid/widget/TextView;

.field private mPercent:Landroid/widget/TextView;

.field private mPercentFormat:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInfo:Landroid/widget/TextView;

.field private mRemoteNum:I

.field private mRemoteTitle:Landroid/widget/TextView;

.field private mSyncButton:Landroid/widget/Button;

.field private mSyncDate:Ljava/lang/String;

.field private mSyncHandler:Landroid/os/Handler;

.field private mSyncResultHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/lewa/cloud/ContactsSyncActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/ContactsSyncActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 282
    new-instance v0, Lcom/lewa/cloud/ContactsSyncActivity$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/ContactsSyncActivity$1;-><init>(Lcom/lewa/cloud/ContactsSyncActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncHandler:Landroid/os/Handler;

    .line 299
    new-instance v0, Lcom/lewa/cloud/ContactsSyncActivity$2;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/ContactsSyncActivity$2;-><init>(Lcom/lewa/cloud/ContactsSyncActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncResultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/ContactsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/cloud/ContactsSyncActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lewa/cloud/ContactsSyncActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mPercentFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lewa/cloud/ContactsSyncActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lewa/cloud/ContactsSyncActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->dealwithNetworkDisconnection()V

    return-void
.end method

.method private contactSync()V
    .locals 6

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070042

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, info:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V

    .line 160
    return-void
.end method

.method private dealwithNetworkDisconnection()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private notifySync(Z)V
    .locals 13
    .parameter "sync"

    .prologue
    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v8, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 243
    .local v8, uid:I
    if-eqz p1, :cond_0

    .line 244
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v1, builder:Landroid/app/Notification$Builder;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 246
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 247
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 248
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 249
    .local v6, res:Landroid/content/res/Resources;
    const v11, 0x7f070059

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, body:Ljava/lang/CharSequence;
    const v11, 0x7f070058

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 251
    .local v7, title:Ljava/lang/CharSequence;
    const v11, 0x7f020016

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 252
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 253
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 255
    .local v9, when:J
    new-instance v4, Landroid/widget/RemoteViews;

    const v11, 0x7f030008

    invoke-direct {v4, v5, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 256
    .local v4, contentView:Landroid/widget/RemoteViews;
    const/high16 v11, 0x7f0a

    const v12, 0x7f020016

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 257
    const v11, 0x7f0a0001

    invoke-virtual {v4, v11, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 258
    const v11, 0x7f0a001e

    invoke-virtual {v4, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 259
    const v11, 0x7f0a001d

    const-string v12, "kk:mm"

    invoke-static {v12, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-class v11, Lcom/lewa/cloud/ContactsSyncActivity;

    invoke-direct {v2, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v2, click:Landroid/content/Intent;
    const/high16 v11, 0x800

    invoke-static {p0, v8, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 269
    .local v3, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 270
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/lewa/cloud/ContactsSyncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 280
    .end local v0           #body:Ljava/lang/CharSequence;
    .end local v1           #builder:Landroid/app/Notification$Builder;
    .end local v2           #click:Landroid/content/Intent;
    .end local v3           #contentIntent:Landroid/app/PendingIntent;
    .end local v4           #contentView:Landroid/widget/RemoteViews;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    .end local v8           #uid:I
    .end local v9           #when:J
    :goto_0
    return-void

    .line 274
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v8       #uid:I
    :cond_0
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/lewa/cloud/ContactsSyncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v11, v8}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v5           #packageName:Ljava/lang/String;
    .end local v8           #uid:I
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method private updateContactAll()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateContactData()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public endSync()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mPercent:Landroid/widget/TextView;

    .line 230
    iput-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/cloud/ContactsSyncActivity;->notifySync(Z)V

    .line 232
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->finish()V

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->dealwithNetworkDisconnection()V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->contactSync()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f06001c

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 82
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 83
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    const v5, 0x7f0a0030

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, head:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const v5, 0x7f0a0033

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 89
    .local v2, loc:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const v5, 0x7f0a0032

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 91
    .local v4, sync:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    const v5, 0x7f0a0036

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 93
    .local v3, remote:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    sget-object v5, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v5}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 95
    const v5, 0x7f0a0031

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    .line 96
    const v5, 0x7f0a0034

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLocalTitle:Landroid/widget/TextView;

    .line 97
    const v5, 0x7f0a0035

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLocalInfo:Landroid/widget/TextView;

    .line 98
    const v5, 0x7f0a001b

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mRemoteTitle:Landroid/widget/TextView;

    .line 99
    const v5, 0x7f0a0037

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mRemoteInfo:Landroid/widget/TextView;

    .line 100
    const v5, 0x7f0a000a

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mAttentionInfo:Landroid/widget/TextView;

    .line 101
    const v5, 0x7f0a000b

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncButton:Landroid/widget/Button;

    .line 102
    iget-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->MSyncSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->MSyncSmallIcon:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    const v5, 0x7f0a000c

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/ContactsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mHelpInfo:Landroid/widget/TextView;

    .line 108
    sget-object v5, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v5, p0}, Lcom/lewa/cloud/CloudApp;->addActivity(Landroid/app/Activity;)V

    .line 109
    new-instance v5, Lcom/lewa/cloud/manager/SyncProcessorObsv;

    iget-object v6, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/lewa/cloud/manager/SyncProcessorObsv;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    sput-object v5, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    .line 110
    new-instance v5, Lcom/lewa/cloud/manager/SyncResultObsv;

    iget-object v6, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncResultHandler:Landroid/os/Handler;

    invoke-direct {v5, v6}, Lcom/lewa/cloud/manager/SyncResultObsv;-><init>(Landroid/os/Handler;)V

    sput-object v5, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    .line 111
    iget-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v6, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    invoke-virtual {v5, v6}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setProgressObsv(Lcom/lewa/cloud/manager/SyncProcessorObsv;)V

    .line 112
    iget-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v6, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-virtual {v5, v6}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setSyncResultObsv(Lcom/lewa/cloud/manager/SyncResultObsv;)V

    .line 113
    invoke-direct {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->updateContactAll()Z

    .line 114
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->onBackPressed()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->refresh()V

    .line 120
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncButton:Landroid/widget/Button;

    const v1, 0x7f070023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncButton:Landroid/widget/Button;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 122
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity;->MSyncSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mHelpInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getContactSyncHelpInfo()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 237
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->refreshContactSyncDate()Z

    .line 164
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->refreshContactLocal()Z

    .line 165
    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->refreshContactRemote()Z

    .line 166
    iget v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mRemoteNum:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLocalNum:I

    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mAttentionInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_0
    iget v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLocalNum:I

    iget v1, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mRemoteNum:I

    if-le v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mAttentionInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_1
    iget v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLocalNum:I

    iget v1, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mRemoteNum:I

    if-eq v0, v1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mAttentionInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mAttentionInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public refreshContactLocal()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getContactLocalNum()I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLocalNum:I

    .line 201
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLocalInfo:Landroid/widget/TextView;

    iget v1, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLocalNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public refreshContactRemote()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getContactStoreNum()I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mRemoteNum:I

    .line 207
    iget-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mRemoteInfo:Landroid/widget/TextView;

    iget v1, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mRemoteNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public refreshContactSyncDate()Z
    .locals 7

    .prologue
    const v5, 0x7f070025

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    iget-object v3, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getContactSyncTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, date:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v2, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    return v1

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncDate:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    move v1, v2

    .line 191
    goto :goto_0

    .line 194
    :cond_2
    iput-object v0, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncDate:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startSync(Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/app/AlertDialog;IIZZI)V
    .locals 11
    .parameter "percent"
    .parameter "progress"
    .parameter "dialog"
    .parameter "type"
    .parameter "direction"
    .parameter "byTime"
    .parameter "syncAll"
    .parameter "syncDuration"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mPercent:Landroid/widget/TextView;

    .line 221
    iput-object p2, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 222
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/lewa/cloud/ContactsSyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity;->mPercentFormat:Ljava/lang/String;

    .line 223
    new-instance v0, Lcom/lewa/cloud/task/SyncDataTask;

    invoke-virtual {p0}, Lcom/lewa/cloud/ContactsSyncActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/lewa/cloud/task/SyncDataTask;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/app/AlertDialog;IIZZI)V

    .line 224
    .local v0, syncTask:Lcom/lewa/cloud/task/SyncDataTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/task/SyncDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 225
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lewa/cloud/ContactsSyncActivity;->notifySync(Z)V

    .line 226
    return-void
.end method
